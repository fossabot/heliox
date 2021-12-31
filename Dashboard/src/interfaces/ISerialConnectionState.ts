export default interface ISerialConnectionState {
  port: string;
  message: string;
  status: {
    connecting: boolean;
    connected: boolean;
    error: string;
  };
// eslint-disable-next-line semi
}
