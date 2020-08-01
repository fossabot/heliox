import React, { useState } from 'react';
import { useSelector, useDispatch } from 'react-redux/';

export default function Test() {
  const comConnection = useSelector((state) => state.comConnectionReducer);
  const [comData, setComData] = useState('');

  comConnection.parser.on('data', (data) => {
    setComData(data);
  });

  const triggerOn = () => {
    comConnection.port.write('on');
  };
  const triggerOff = () => {
    comConnection.port.write('off');
  };

  const triggerOne = () => {
    comConnection.port.write('0');
  };
  const triggerTwo = () => {
    comConnection.port.write('1');
  };

  return (
    <div style={{ margin: 10 }}>
      <button onClick={triggerOn} style={{ marginRight: 10 }}>
        ON
      </button>
      <button onClick={triggerOff} style={{ marginRight: 10 }}>
        OFF
      </button>
      <button
        onClick={triggerOne}
        style={{ marginRight: 10, backgroundColor: comData[0] === '0' ? 'red' : 'green' }}>
        One
      </button>
      <button
        onClick={triggerTwo}
        style={{ marginRight: 10, backgroundColor: comData[1] === '0' ? 'red' : 'green' }}>
        Two
      </button>
      <p>{comData}</p>
    </div>
  );
}
