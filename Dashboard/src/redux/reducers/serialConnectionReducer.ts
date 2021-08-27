import { createReducer } from "typesafe-actions";
import ISerialConnectionState from "../../interfaces/ISerialConnectionState";
import { SerialConnectionActionTypes } from "../actions/serialConnectionActions";

const initialState: ISerialConnectionState = {
  port: null,
  portController: null,
  status: {
    connecting: false,
    connected: false,
    error: null,
  },
};

const SerialConnectionReducer = createReducer(initialState)
  .handleType(SerialConnectionActionTypes.SET_SERIAL_PORT, (state, action) => ({
    ...state,
    port: action.payload,
  }))
  .handleType(SerialConnectionActionTypes.CONNECTION_START, (state) => ({
    ...state,
    status: {
      connecting: true,
      connected: false,
      error: null,
    },
  }))
  .handleType(SerialConnectionActionTypes.CONNECTION_FAILURE, (state, action) => ({
    ...state,
    status: {
      connecting: false,
      connected: false,
      error: action.payload.message,
    },
  }))
  .handleType(SerialConnectionActionTypes.CONNECTION_SUCCESS, (state) => ({
    ...state,
    status: {
      connecting: false,
      connected: true,
      error: null,
    },
  }))
  .handleType(SerialConnectionActionTypes.CONNECTION_END, (state) => ({
    ...state,
    portController: null,
    status: {
      ...state.status,
      connecting: false,
      connected: false,
    },
  }))
  .handleType(SerialConnectionActionTypes.SET_PORT_CONTROLLER, (state, action) => ({
    ...state,
    portController: action.payload,
  }));

export default SerialConnectionReducer;
