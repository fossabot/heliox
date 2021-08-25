import React, { useState } from "react";
import { createGlobalStyle } from "styled-components";
import SerialPort from "serialport";
import Knob from "./Components/Knob";
import SerialConnection from "./SerialConnection";

const GlobalStyle = createGlobalStyle`
  html {
    border-style: solid;
    border-color: #363636;
    border-width: 1px;
    box-sizing: border-box;
    height: 100%;
    border-bottom-style: hidden;
    border-right-style: hidden;
  }
`;

const port = SerialConnection();

const App = () => {
  const [counter, setCounter] = useState(0);

  const sendIncreaseHandler = () => {
    setCounter(counter + 1);
    port.write("2i");
  };
  const sendDecreaseHandler = () => {
    setCounter(counter - 1);
    port.write("2d");
  };
  const sendToggleHandler = () => {
    port.write("2t");
  };

  return (
    <div>
      <GlobalStyle />
      <Knob
        increase={sendIncreaseHandler}
        decrease={sendDecreaseHandler}
        toggle={sendToggleHandler}
        status={counter}
      />
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
          setCounter(counter + 1);
        }}
      >
        increase
      </button>
      <button
        type="button"
        onClick={() => {
          port.close();
        }}
      >
        close
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
      </button>
    </div>
  );
};
export default App;
