import React, { Component } from 'react';
import PropTypes from 'prop-types';
import SerialPort from 'serialport';

export default class Login extends Component {
  static propTypes = {
    onLogin: PropTypes.func.isRequired,
  };

  state = {
    username: '',
  };

  handleLogin = () => {
    this.props.onLogin({
      username: this.state.username,
      loggedIn: true,
    });
  };

  handleChange = (e) => {
    this.setState({
      username: e.target.value,
    });
  };

  render() {
    const port = new SerialPort('COM3');
    const triggerOn = () => {
      port.write('on');
    };
    const triggerOff = () => {
      port.write('off');
    };
    return (
      <div>
        <button onClick={triggerOn}>ON</button>
        <button onClick={triggerOff}>OFF</button>
      </div>
    );
  }
}
