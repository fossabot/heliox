import thunk from "redux-thunk";
import { createStore, applyMiddleware } from "redux";
import { RootAction, RootState } from "typesafe-actions";
import { persistStore, persistReducer } from "redux-persist";
import createElectronStorage from "redux-persist-electron-storage";

import ElectronStore from "electron-store";
import composeEnhancers from "./utils";
import rootReducer from "./root-reducer";

const middlewares = [thunk];

const enhancer = composeEnhancers(applyMiddleware(...middlewares));

export const electronStore = new ElectronStore();

createElectronStorage({
  electronStore,
});

const persistConfig = {
  key: "serialConnection",
  storage: createElectronStorage({
    electronStore,
  }),
  blacklist: ["portController"],
};

export const persistedReducer = persistReducer(persistConfig, rootReducer);
const initialState = {};

export const store = createStore<RootState, RootAction, any, any>(
  persistedReducer,
  initialState,
  enhancer,
);

export const persistor = persistStore(store);
