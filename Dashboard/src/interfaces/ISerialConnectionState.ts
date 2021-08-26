export default interface ISerialConnectionState {
  port: null | string;
  status: {
    connecting: boolean;
    connected: boolean;
    error: string | null;
  };
// eslint-disable-next-line semi
}
