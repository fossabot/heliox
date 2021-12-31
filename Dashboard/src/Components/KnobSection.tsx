import React from "react";
import styled from "styled-components";
import { useAppDispatch, useAppSelector } from "../redux/hooks";
import { sendMessage } from "../redux/slices/serialConnectionSlice";
import Knob from "./Knob";

const KnobContainer = styled.div`
display: flex;
justify-content: space-between;
margin: 1rem;
`;

const ids: number[] = [0, 1, 2, 3];

const KnobSection = () => {
  const serialConnection = useAppSelector((state) => state.serialConnection);
  const dispatch = useAppDispatch();
  const sendIncreaseHandler = (index: number) => {
    dispatch(sendMessage(`${index}i`));
    console.log(index);
  };
  const sendDecreaseHandler = (index: number) => {
    dispatch(sendMessage(`${index}d`));
    console.log(index);
  };
  const sendToggleHandler = (index: number) => {
    dispatch(sendMessage(`${index}t`));
    console.log(index);
  };
  return (
    <KnobContainer>
      {ids.map((id) => (
        <Knob
          key={id}
          increase={() => { sendIncreaseHandler(id); }}
          decrease={() => { sendDecreaseHandler(id); }}
          toggle={() => { sendToggleHandler(id); }}
          status={Math.floor((parseInt(serialConnection.message.split(",")[id], 10) / 255) * 100)}
        />
      ))}
    </KnobContainer>
  );
};
export default KnobSection;
