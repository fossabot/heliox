import SerialPort, { parsers } from "serialport";

const port = new SerialPort("COM5", {
  baudRate: 9600,
  autoOpen: false,
});

const parser = port.pipe(new parsers.Readline({ delimiter: "\r\n" }));

export { port, parser };
