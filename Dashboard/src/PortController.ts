import SerialPort, { parsers } from "serialport";

class PortController {
  path: null | string;

  port: null | SerialPort;

  parser: any;

  onCloseCallback: (error:Error)=>void;

  constructor() {
    this.path = null;
    this.port = null;
    this.onCloseCallback = () => {};
  }

  get isOpen() {
    if (!this.port) {
      return false;
    }
    return this.port.isOpen;
  }

  create(path: string) {
    this.path = path;
    this.port = new SerialPort(path, {
      baudRate: 9600,
      autoOpen: false,
    });

    this.parser = this.port.pipe(new parsers.Readline({ delimiter: "\r\n" }));
  }

  open(callback: (error:Error | null | undefined)=>void, onCloseCallback:(error:Error | null | undefined)=>void) {
    if (this.isOpen) {
      throw new Error("Port already open");
    }

    if (this.port === null) {
      throw new Error("Port must be created first");
    }

    this.port.open((error) => callback(error));
    this.port.on("close", onCloseCallback);
    this.onCloseCallback = onCloseCallback;
  }

  close() {
    if (this.port) {
      this.port.close();
      this.port.removeListener("data", this.onCloseCallback);
    }
  }
}

export default PortController;
