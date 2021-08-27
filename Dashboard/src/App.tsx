import React, { useEffect, useState } from "react";
import { createGlobalStyle } from "styled-components";
import { useDispatch, useSelector } from "react-redux";
import { RootState } from "typesafe-actions";
import Select from "react-select";
import SerialPort from "serialport";
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

const options: [{value: string, label:string}] = [{ value: "placeholder", label: "Select Port" }];

const fetchPorts = async () => {
  const data = await SerialPort.list();
  options.shift();
  data.forEach((comPort) => { options.push({ value: comPort.path, label: comPort.path }); });
};

const App = () => {
  const [status, setStatus] = useState(0);
  const dispatch = useDispatch();
  const serialConnection = useSelector<RootState, RootState["serialConnection"]>((state) => state.serialConnection);
  const SerialDataListener = (data: string) => {
    const parsedData = data.split(",");
    console.log(parsedData);
    setStatus(parseInt(parsedData[2], 10));
  };

  fetchPorts();

  const [portSelectionValue, setPortSelectionValue] = useState(options[0]);
  const handlePortChange = async (selectedOption: any) => {
    setPortSelectionValue(selectedOption);
    dispatch(setSerialPort(selectedOption.value));
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
      <Select
        value={portSelectionValue}
        onChange={handlePortChange}
        options={options}
      />
    </div>
  );
};
export default App;
