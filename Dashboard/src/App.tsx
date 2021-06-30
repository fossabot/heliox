import React from "react";
import SerialPort from "serialport";

const App = () => {
  const port = new SerialPort("COM5", {
    baudRate: 9600,
    autoOpen: false,
  });
  const handler = () => {
    // eslint-disable-next-line
    port.write('off', (err) => {
      if (err) {
        return console.log("Error on write: ", err.message);
      }
      console.log("message written");
    });
  };

  return (
    <div>
      <h3>Hello World</h3>
      <button
        type="button"
        onClick={() => {
          port.open();
        }}
      >
        open
      </button>
      <button
        type="button"
        onClick={() => {
          port.close();
        }}
      >
        close
      </button>
      <button type="button" onClick={handler}>send</button>
      <button
        type="button"
        onClick={() => {
          const list = SerialPort.list();
          list.then((arg) => { console.log(arg); });
        }}
      >
        list
      </button>

    </div>
  );
};

export default App;
