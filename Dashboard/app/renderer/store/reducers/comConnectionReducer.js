import SerialPort from 'serialport';
const Readline = require('@serialport/parser-readline');

const port = new SerialPort('COM3', {
  baudRate: 9600,
});

const parser = port.pipe(new Readline({ delimiter: '\r\n' }));

const initialState = { port, parser };

export default (state = initialState) => {
  return state;
};
