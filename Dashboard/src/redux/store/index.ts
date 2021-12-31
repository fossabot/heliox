import thunk from "redux-thunk";
import { configureStore } from "@reduxjs/toolkit";
import rootReducer from "./root-reducer";
import serialConnection from "../middlewares/serialConnection";

const middlewares = [thunk, serialConnection];

const store = configureStore(
  {
    reducer: rootReducer,
    middleware: (getDefaultMiddleware) => getDefaultMiddleware().concat(middlewares),
    devTools: true,
  },
);

export default store;
