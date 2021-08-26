import React, { useEffect, useState } from "react";
import { createGlobalStyle } from "styled-components";
import SerialPort from "serialport";
import Knob from "./Components/Knob";
import { port, parser } from "./SerialConnection";

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

const App = () => {
  const [status, setStatus] = useState(0);
  const SerialDataListener = (data: string) => {
    const parsedData = data.split(",");
    setStatus(parseInt(parsedData[2], 10));
  };

  useEffect(() => {
    parser.on("data", SerialDataListener);
    port.open();
    return () => {
      parser.removeListener("data", SerialDataListener);
      port.close();
    };
  }, []);

  const sendIncreaseHandler = () => {
    setStatus(status + 1);
    port.write("2i");
  };
  const sendDecreaseHandler = () => {
    setStatus(status - 1);
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
        status={status}
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
