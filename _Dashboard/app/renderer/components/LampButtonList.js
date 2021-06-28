import React from 'react';
import LampButtonToggle from './LampButtonToggle';
import LampButtonAbsolute from './LampButtonAbsolute';

export default function LampButtonList() {
  return (
    <div style={{ margin: 20 }}>
      <div style={{ display: 'flex', justifyContent: 'center' }}>
        <LampButtonAbsolute title="on" />
        <LampButtonAbsolute title="off" />
      </div>

      <div style={{ display: 'flex', justifyContent: 'center', marginTop: 20 }}>
        <LampButtonToggle lampnumber={0} />
        <LampButtonToggle lampnumber={1} />
        <LampButtonToggle lampnumber={2} />
        <LampButtonToggle lampnumber={3} />
      </div>
    </div>
  );
}
