import React, { useState, useEffect } from 'react';
import { useSelector } from 'react-redux/';
import Button from '@material-ui/core/Button';
import EmojiObjectsIcon from '@material-ui/icons/EmojiObjects';

export default function LampButtonToggle(props) {
  //const comConnection = useSelector((state) => state.comConnectionReducer);
  const comConnection = null;
  const [comData, setComData] = useState('');

  const comDataListener = (data) => {
    setComData(data);
  };

  useEffect(() => {
    comConnection.parser.on('data', comDataListener);
    return () => {
      comConnection.parser.removeListener('data', comDataListener);
    };
  }, []);

  const lampEnabled = comData[props.lampnumber] === '1';

  return (
    <div>
      <Button
        style={{ height: 130, width: 130, marginLeft: 10, marginRight: 10 }}
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
