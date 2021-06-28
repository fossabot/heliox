import { combineReducers } from 'redux';
import comConnectionStatusReducer from './comConnectionStatusReducer';

const rootReducer = combineReducers({ comConnectionStatusReducer });

export default rootReducer;
