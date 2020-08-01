import React from 'react';
import LampButtonToggle from './LampButtonToggle';
import LampButtonAbsolute from './LampButtonAbsolute';

export default function LampButtonList() {
  return (
    <div>
      <div style={{ display: 'flex', margin: 20 }}>
        <LampButtonAbsolute title="on" />
        <LampButtonAbsolute title="off" />
      </div>

      <div style={{ display: 'flex', margin: 20 }}>
        <LampButtonToggle lampnumber={0} lampEnabled={true} />
        <LampButtonToggle lampnumber={1} lampEnabled={true} />
        <LampButtonToggle lampnumber={2} lampEnabled={true} />
        <LampButtonToggle lampnumber={3} lampEnabled={true} />
      </div>
    </div>
  );
}
