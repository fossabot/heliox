import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore } from 'redux';
import rootReducer from './store/reducers';
import CssBaseline from '@material-ui/core/CssBaseline';
import createMuiTheme from '@material-ui/core/styles/createMuiTheme';
import { ThemeProvider } from '@material-ui/core/styles';
import LampButtonList from './components/LampButtonList';
import Header from './components/Header';

const store = createStore(
  rootReducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__(),
);

const darkTheme = createMuiTheme({
  palette: {
    type: 'dark',
    primary: {
      main: '#23272A',
    },
    secondary: {
      main: '#7289DA',
    },
  },
});

const rootElement = document.querySelector(document.currentScript.getAttribute('data-container'));

ReactDOM.render(
  <Provider store={store}>
    <ThemeProvider theme={darkTheme}>
      <CssBaseline />
      <Header error={false} />
      <LampButtonList />
    </ThemeProvider>
  </Provider>,
  rootElement,
);
