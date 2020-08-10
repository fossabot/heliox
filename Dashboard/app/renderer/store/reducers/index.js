import { combineReducers } from 'redux';
import comConnectionReducer from './comConnectionReducer';
import comConnectionStatusReducer from './comConnectionStatusReducer';

const rootReducer = combineReducers({ comConnectionReducer, comConnectionStatusReducer });

export default rootReducer;
