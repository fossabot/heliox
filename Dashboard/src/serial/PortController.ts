import SerialPort, { parsers } from "serialport";

class PortController {
  path: string;

  port: SerialPort;

  parser: any;

  onCloseCallback: (error:Error)=>void;

  constructor(path: string) {
    this.path = path;
    this.port = new SerialPort(path, {
      baudRate: 9600,
      autoOpen: false,
    });
    this.parser = this.port.pipe(new parsers.Readline({ delimiter: "\r\n" }));
    this.onCloseCallback = () => {};
  }

  get isOpen(): boolean {
    if (this.port == null) {
      return false;
    }
    return this.port.isOpen;
  }

  get getParser(): any {
    return this.parser;
  }

  open(callback: (error:Error | null | undefined)=>void, onCloseCallback:(error:Error | null | undefined)=>void) {
    if (this.isOpen) {
      throw new Error("Port already open");
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
