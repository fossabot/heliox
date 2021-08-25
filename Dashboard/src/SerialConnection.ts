import SerialPort from "serialport";

const newPort = () => {
  const port = new SerialPort("COM5", {
    baudRate: 9600,
    autoOpen: false,
  });
  return port;
};

export default newPort;
