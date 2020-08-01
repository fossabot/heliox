import React, { useState } from 'react';
import { useSelector } from 'react-redux/';
import Button from '@material-ui/core/Button';
import EmojiObjectsIcon from '@material-ui/icons/EmojiObjects';

export default function LampButtonToggle(props) {
  const comConnection = useSelector((state) => state.comConnectionReducer);
  const [comData, setComData] = useState('');
  comConnection.parser.on('data', (data) => {
    setComData(data);
  });
  const lampEnabled = comData[props.lampnumber] === '1';
  return (
    <div>
      <Button
        style={{ height: 130, width: 130, marginRight: 20, userSelect: 'none' }}
        variant="contained"
        color={lampEnabled ? 'secondary' : 'primary'}
        endIcon={<EmojiObjectsIcon />}
        onClick={() => {
          comConnection.port.write(String(props.lampnumber));
        }}>
        {`Lamp ${props.lampnumber}`}
      </Button>
    </div>
  );
}
