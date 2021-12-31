import { Middleware, Action } from "@reduxjs/toolkit";
import { RootState } from "../store/types.d";
import {
  connect, disconnect, setSerialPort, setMessage, sendMessage, connectionStart, connectionFailure, connectionSuccess, connectionEnd,
} from "../slices/serialConnectionSlice";
import PortController from "../../serial/PortController";

let serialPort: PortController|null = null;

const serialConnection: Middleware<{}, RootState> = (state) => (next) => (action: Action) => {
  const errorCalbackHandler = (error: Error | null | undefined) => {
    if (error === null || error === undefined) {
      state.dispatch(connectionSuccess());
    } else {
      state.dispatch(connectionFailure(error.message));
    }
  };
  const closeCalbackHandler = (error: Error | null | undefined) => {
    if (error !== null && error !== undefined) {
      if (error.message === "Reading from COM port (ReadIOCompletion): Access denied") {
        state.dispatch(connectionFailure(`Device ${state.getState().serialConnection.port} disconnected`));
        state.dispatch(connectionEnd());
      }
    }
  };
  const serialDataListener = (msg: string) => {
    if (msg !== state.getState().serialConnection.message) {
      state.dispatch(setMessage(msg));
    }
  };

  if (connect.match(action)) {
    state.dispatch(connectionStart());
    if (state.getState().serialConnection.port === "") {
      state.dispatch(connectionFailure("No Serial Port set"));
      return next(action);
    }
    serialPort?.open(errorCalbackHandler, closeCalbackHandler);
    serialPort?.parser.on("data", serialDataListener);
  } else if (disconnect.match(action)) {
    serialPort?.close();
    state.dispatch(connectionEnd());
  } else if (setSerialPort.match(action)) {
    serialPort = new PortController(action.payload);
  } else if (sendMessage.match(action)) {
    serialPort?.write(action.payload);
  }
  return next(action);
};

export default serialConnection;
