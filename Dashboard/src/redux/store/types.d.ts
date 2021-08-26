import { StateType, ActionType } from "typesafe-actions";
import { ThunkAction } from "redux-thunk";
import rootReducer from "./root-reducer";
import rootAction from "./root-action";
import store from "./index";

declare module "typesafe-actions" {
  export type Store = StateType<typeof store>;

  export type RootState = StateType<typeof rootReducer>;

  export type RootAction = ActionType<typeof rootAction>;

  export type ThunkResult<R> = ThunkAction<R, RootState, unknown, RootAction>;

  interface Types {
    RootAction: RootAction;
  }
}
