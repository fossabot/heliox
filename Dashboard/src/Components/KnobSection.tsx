import React from "react";
import styled from "styled-components";
import Knob from "./Knob";

const KnobSection = () => {
  const KnobContainer = styled.div`
  display: flex;
  `;

  return (
    <KnobContainer>
      <Knob
        increase={() => {}}
        decrease={() => {}}
        toggle={() => {}}
        status={255}
      />
      <Knob
        increase={() => {}}
        decrease={() => {}}
        toggle={() => {}}
        status={255}
      />
      <Knob
        increase={() => {}}
        decrease={() => {}}
        toggle={() => {}}
        status={255}
      />
      <Knob
        increase={() => {}}
        decrease={() => {}}
        toggle={() => {}}
        status={255}
      />

    </KnobContainer>

  );
};

export default KnobSection;
