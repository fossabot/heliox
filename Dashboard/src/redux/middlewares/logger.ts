import { Middleware } from "@reduxjs/toolkit";
import { RootState } from "../store/types.d";

const logger: Middleware<{}, RootState> = (store) => (next) => (action) => {
  console.log(action.type);
  console.log(store.getState());
  return next(action);
};

export default logger;
