import { StateType, ActionType } from "typesafe-actions";
import { ThunkAction } from "redux-thunk";
import rootAction from "./root-action";
import { persistedReducer, store } from "./index";

declare module "typesafe-actions" {
  export type Store = StateType<typeof store>;

  export type RootState = StateType<typeof persistedReducer>;

  export type RootAction = ActionType<typeof rootAction>;

  export type ThunkResult<R> = ThunkAction<R, RootState, unknown, RootAction>;

  interface Types {
    RootAction: RootAction;
  }
}
