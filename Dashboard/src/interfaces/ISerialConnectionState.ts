import PortController from "../SerialConnection";

export default interface ISerialConnectionState {
  port: string | null;
  portController: PortController | null;
  status: {
    connecting: boolean;
    connected: boolean;
    error: string | null;
  };
// eslint-disable-next-line semi
}
