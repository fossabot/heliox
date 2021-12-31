import { combineReducers } from "redux";
import SerialConnectionReducer from "../slices/serialConnectionSlice";

const rootReducer = combineReducers({
  serialConnection: SerialConnectionReducer,
});

export default rootReducer;
