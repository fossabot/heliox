import { combineReducers } from "redux";
import SerialConnectionReducer from "../reducers/serialConnectionReducer";

const rootReducer = combineReducers({
  serialConnection: SerialConnectionReducer,
});

export default rootReducer;
