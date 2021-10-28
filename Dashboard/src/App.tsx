import React, { useState } from "react";
import { createGlobalStyle } from "styled-components";
import { useDispatch } from "react-redux";
import Select from "react-select";
import SerialPort from "serialport";
import { connect, disconnect } from "./redux/actions/asyncSerialConnectionActions";
import { setSerialPort } from "./redux/actions/serialConnectionActions";
import KnobSection from "./Components/KnobSection";
import { electronStore } from "./redux/store/index";

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
  const dispatch = useDispatch();

  fetchPorts();

  const [portSelectionValue, setPortSelectionValue] = useState(options[0]);
  const handlePortChange = async (selectedOption: any) => {
    setPortSelectionValue(selectedOption);
    dispatch(setSerialPort(selectedOption.value));
  };

  return (
    <div>
      <GlobalStyle />
      <KnobSection />
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
      <button
        type="button"
        onClick={() => {
          electronStore.clear();
        }}
      >
        reset storage
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
