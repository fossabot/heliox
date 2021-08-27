import { action } from "typesafe-actions";
import PortController from "../../SerialConnection";

export enum SerialConnectionActionTypes {
    SET_SERIAL_PORT = "SET_SERIAL_PORT",
    CONNECTION_START = "CONNECTION_START",
    CONNECTION_SUCCESS = "CONNECTION_SUCCESS",
    CONNECTION_FAILURE = "CONNECTION_FAILURE",
    CONNECTION_END = "CONNECTION_END",
    SET_PORT_CONTROLLER = "SET_PORT_CONTROLLER"
  }

export const setSerialPort = (port: string) => action(SerialConnectionActionTypes.SET_SERIAL_PORT, port);

export const connectionStart = () => action(SerialConnectionActionTypes.CONNECTION_START);

export const connectionSuccess = () => action(SerialConnectionActionTypes.CONNECTION_SUCCESS);

export const connectionFailure = (error: Error) => action(SerialConnectionActionTypes.CONNECTION_FAILURE, error);

export const connectionEnd = () => action(SerialConnectionActionTypes.CONNECTION_END);

export const setPortController = (controller: PortController) => action(SerialConnectionActionTypes.SET_PORT_CONTROLLER, controller);
