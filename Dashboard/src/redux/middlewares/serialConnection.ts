import { Middleware, Action } from "@reduxjs/toolkit";
import { RootState } from "../store/types.d";
import {
  connect, disconnect, setSerialPort, setMessage,
} from "../slices/serialConnectionSlice";
import PortController from "../../serial/PortController";
import store from "../store";

let serialPort: PortController|null = null;
const errorCalbackHandler = () => {};
const closeCalbackHandler = () => {};
const serialDataListener = (msg: string) => { store.dispatch(setMessage(msg)); };

const serialConnection: Middleware<{}, RootState> = () => (next) => (action: Action) => {
  if (connect.match(action)) {
    serialPort?.open(errorCalbackHandler, closeCalbackHandler);
    serialPort?.parser.on("data", serialDataListener);
    console.log("connect");
  } else if (disconnect.match(action)) {
    serialPort?.close();
    console.log("disconnect");
  } else if (setSerialPort.match(action)) {
    serialPort = new PortController(action.payload);
    console.log("setSerialPort");
  }
  return next(action);
};

export default serialConnection;
