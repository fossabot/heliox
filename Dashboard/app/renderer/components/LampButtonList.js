import React from 'react';
import LampButtonToggle from './LampButtonToggle';
import LampButtonAbsolute from './LampButtonAbsolute';

export default function LampButtonList() {
  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'center' }}>
        <div style={{ display: 'flex', margin: 20 }}>
          <LampButtonAbsolute title="on" />
          <LampButtonAbsolute title="off" />
        </div>
      </div>

      <div style={{ display: 'flex', margin: 20 }}>
        <LampButtonToggle lampnumber={0} />
        <LampButtonToggle lampnumber={1} />
        <LampButtonToggle lampnumber={2} />
        <LampButtonToggle lampnumber={3} />
      </div>
    </div>
  );
}
