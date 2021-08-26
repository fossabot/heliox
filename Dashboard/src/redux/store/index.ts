import thunk from "redux-thunk";
import { createStore, applyMiddleware } from "redux";
import { RootAction, RootState } from "typesafe-actions";
import composeEnhancers from "./utils";
import rootReducer from "./root-reducer";

const middlewares = [thunk];

const enhancer = composeEnhancers(applyMiddleware(...middlewares));

const initialState = {};

const store = createStore<RootState, RootAction, any, any>(
  rootReducer,
  initialState,
  enhancer,
);

export default store;
