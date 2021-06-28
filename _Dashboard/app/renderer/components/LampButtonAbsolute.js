import React from 'react';
import { useSelector } from 'react-redux/';
import Button from '@material-ui/core/Button';
import EmojiObjectsIcon from '@material-ui/icons/EmojiObjects';

export default function LampButtonToggle(props) {
  //const comConnection = useSelector((state) => state.comConnectionReducer);
  const comConnection = null;

  return (
    <div>
      <Button
        style={{ height: 130, width: 130, marginLeft: 10, marginRight: 10 }}
        variant="contained"
        color="secondary"
        endIcon={<EmojiObjectsIcon />}
        onClick={() => {
          comConnection.port.write(props.title);
        }}>
        {props.title}
      </Button>
    </div>
  );
}
