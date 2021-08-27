import { ThunkResult } from "typesafe-actions";
import {
  connectionStart, connectionSuccess, connectionFailure, setPortController, connectionEnd,
} from "./serialConnectionActions";
import PortController from "../../PortController";

const connect = (): ThunkResult<void> => async (dispatch, getState) => {
  const state = getState();
  dispatch(connectionStart());

  if (state.serialConnection.port === null) {
    dispatch(connectionFailure(new Error("No Serial Port set")));
    return;
  }

  const controller = new PortController();
  controller.create(state.serialConnection.port);

  dispatch(setPortController(controller));

  controller.open((error) => {
    if (error === null || error === undefined) {
      dispatch(connectionSuccess());
    } else {
      dispatch(connectionFailure(error));
    }
  });
};

const disconnect = (): ThunkResult<void> => async (dispatch, getState) => {
  const state = getState();
  state.serialConnection.portController?.close();
  dispatch(connectionEnd());
};

export { connect, disconnect };
