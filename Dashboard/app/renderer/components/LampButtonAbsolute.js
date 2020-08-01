import React from 'react';
import { useSelector } from 'react-redux/';
import Button from '@material-ui/core/Button';
import EmojiObjectsIcon from '@material-ui/icons/EmojiObjects';

export default function LampButtonToggle(props) {
  const comConnection = useSelector((state) => state.comConnectionReducer);

  return (
    <div>
      <Button
        style={{ height: 130, width: 130, marginRight: 20 }}
        variant="contained"
        color="primary"
        href="#contained-buttons"
        size="large"
        endIcon={<EmojiObjectsIcon />}
        onClick={() => {
          comConnection.port.write(props.title);
        }}>
        {props.title}
      </Button>
    </div>
  );
}
