import React from 'react';
import Box from '@material-ui/core/Box';
import SettingsIcon from '@material-ui/icons/Settings';
import IconButton from '@material-ui/core/IconButton';
import CheckCircleIcon from '@material-ui/icons/CheckCircle';
import ErrorIcon from '@material-ui/icons/Error';
import Tooltip from '@material-ui/core/Tooltip';
import { useSelector } from 'react-redux/';

function ConnectionStatus({ error }) {
  if (error) {
    return <ErrorIcon />;
  } else {
    return <CheckCircleIcon />;
  }
}

export default function Header() {
  const comConnectionStatus = useSelector((state) => state.comConnectionStatusReducer);

  return (
    <div>
      <Box
        bgcolor="primary.main"
        style={{
          display: 'flex',
          alignItems: 'center',
          height: 30,
        }}>
        <div
          style={{
            display: 'flex',
            justifyContent: 'space-between',
            justifyItems: 'space-between',
            width: '100%',
            marginLeft: 10,
            marginRight: 10,
          }}>
          <Tooltip title={comConnectionStatus ? 'Click to reconnect' : 'Click to disconnect'}>
            <IconButton size="small">
              <ConnectionStatus error={comConnectionStatus} />
            </IconButton>
          </Tooltip>
          <Tooltip title="Open Settings">
            <IconButton size="small">
              <SettingsIcon />
            </IconButton>
          </Tooltip>
        </div>
      </Box>
    </div>
  );
}
