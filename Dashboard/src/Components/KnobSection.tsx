import React, { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import styled from "styled-components";
import { RootState } from "typesafe-actions";
import Knob from "./Knob";

const KnobContainer = styled.div`
display: flex;
justify-content: space-between;
margin: 1rem;
`;

const KnobSection = () => {
  const [status, setStatus] = useState([{ id: 0, value: 0 }, { id: 1, value: 0 }, { id: 2, value: 0 }, { id: 3, value: 0 }]);
  const serialConnection = useSelector<RootState, RootState["serialConnection"]>((state) => state.serialConnection);

  const SerialDataListener = (data: string) => {
    const parsedData = data.split(",");
    console.log(parsedData);
    setStatus(status.map((element) => ({ ...element, value: parseInt(parsedData[element.id], 10) })));
  };

  useEffect(() => {
    if (serialConnection.portController !== null && serialConnection.portController !== undefined) {
      serialConnection.portController.parser.on("data", SerialDataListener);
    }

    return () => {
      if (serialConnection.portController !== null && serialConnection.portController !== undefined) {
        serialConnection.portController.parser.removeListener("data", SerialDataListener);
      }
    };
  }, [serialConnection]);

  const sendIncreaseHandler = (index: number) => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null && serialConnection.portController !== undefined) {
      serialConnection.portController.port.write(`${index}i`);
    }
  };
  const sendDecreaseHandler = (index: number) => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null && serialConnection.portController !== undefined) {
      serialConnection.portController.port.write(`${index}d`);
    }
  };
  const sendToggleHandler = (index: number) => {
    if (serialConnection.portController !== null && serialConnection.portController.port !== null && serialConnection.portController !== undefined) {
      serialConnection.portController.port.write(`${index}t`);
    }
  };

  return (
    <KnobContainer>
      {status.map((element) => (
        <Knob
          key={element.id}
          increase={() => { sendIncreaseHandler(element.id); }}
          decrease={() => { sendDecreaseHandler(element.id); }}
          toggle={() => { sendToggleHandler(element.id); }}
          status={Math.floor((element.value / 255) * 100)}
        />
      ))}
    </KnobContainer>

  );
};

export default KnobSection;
