import React, { useEffect, useState } from "react";
import { createGlobalStyle } from "styled-components";
import { useDispatch, useSelector } from "react-redux";
import { RootState } from "typesafe-actions";
import Knob from "./Components/Knob";
import { connect, disconnect } from "./redux/actions/asyncSerialConnectionActions";
import { setSerialPort } from "./redux/actions/serialConnectionActions";

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
  const dispatch = useDispatch();
  const serialConnection = useSelector<RootState, RootState["serialConnection"]>((state) => state.serialConnection);

  const SerialDataListener = (data: string) => {
    const parsedData = data.split(",");
    console.log(parsedData);
    setStatus(parseInt(parsedData[2], 10));
  };

  useEffect(() => {
    if (serialConnection.portController !== null) {
      serialConnection.portController.parser.on("data", SerialDataListener);
    }

    return () => {
      if (serialConnection.portController !== null) {
        serialConnection.portController.parser.removeListener("data", SerialDataListener);
      }
    };
  }, [serialConnection]);

  const sendIncreaseHandler = () => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null) {
      setStatus(status + 1);
      serialConnection.portController.port.write("2i");
    }
  };
  const sendDecreaseHandler = () => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null) {
      setStatus(status - 1);
      serialConnection.portController.port.write("2d");
    }
  };
  const sendToggleHandler = () => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null) {
      setStatus(status - 1);
      serialConnection.portController.port.write("2t");
    }
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
          dispatch(setSerialPort("COM5"));
          dispatch(connect());
        }}
      >
        connect
      </button>
      <button
        type="button"
        onClick={() => {
          dispatch(disconnect());
        }}
      >
        disconnect
      </button>
    </div>
  );
};
export default App;
