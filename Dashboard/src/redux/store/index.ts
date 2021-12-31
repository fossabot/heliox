import thunk from "redux-thunk";
import { configureStore } from "@reduxjs/toolkit";
import rootReducer from "./root-reducer";
import logger from "../middlewares/logger";

const middlewares = [thunk, logger];

const store = configureStore(
  {
    reducer: rootReducer,
    middleware: (getDefaultMiddleware) => getDefaultMiddleware().concat(middlewares),
    devTools: true,
  },
);

export default store;
