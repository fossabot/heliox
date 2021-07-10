import React from "react";
// import SerialPort from "serialport";
import { remote } from "electron";
import Knob from "./Components/Knob";

const App = () => {
  // https://www.electronjs.org/docs/api/system-preferences#systempreferencesgetcolorcolor-windows-macos
  console.log(remote.systemPreferences.getColor("active-border")); // border
  // https://www.electronjs.org/docs/api/system-preferences#systempreferencesgetaccentcolor-windows-macos
  console.log(remote.systemPreferences.getAccentColor()); // accent color

  // const port = new SerialPort("COM5", {
  //   baudRate: 9600,
  //   autoOpen: false,
  // });
  // const handler = () => {
  //   // eslint-disable-next-line
  //   port.write("off", (err) => {
  //     if (err) {
  //       return console.log("Error on write: ", err.message);
  //     }
  //     console.log("message written");
  //   });
  // };

  return (
    <div>
      <Knob increase={() => { console.log("inc"); }} decrease={() => { console.log("dec"); }} toggle={() => { console.log("togg"); }} />
      {/* <button
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
      <button type="button" onClick={handler}>
        send
      </button>
      <button
        type="button"
        onClick={() => {
          const list = SerialPort.list();
          list.then((arg) => {
            console.log(arg);
          });
        }}
      >
        list
      </button> */}
    </div>
  );
};

export default App;
