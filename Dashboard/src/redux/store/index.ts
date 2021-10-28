import thunk from "redux-thunk";
import { createStore, applyMiddleware } from "redux";
import { RootAction, RootState } from "typesafe-actions";
import { persistStore, persistReducer, createTransform } from "redux-persist";
import createElectronStorage from "redux-persist-electron-storage";

import ElectronStore from "electron-store";
import omit from "lodash/omit";
import composeEnhancers from "./utils";
import rootReducer from "./root-reducer";

const middlewares = [thunk];

const enhancer = composeEnhancers(applyMiddleware(...middlewares));

export const electronStore = new ElectronStore();

createElectronStorage({
  electronStore,
});

const blacklistPaths = ["serialConnection.portController", "serialConnection.status"];
const persistConfig = {
  key: "root",
  storage: createElectronStorage({
    electronStore,
  }),
  blacklist: blacklistPaths.filter((a) => !a.includes(".")),
  transforms: [
    // nested blacklist-paths require a custom transform to be applied
    createTransform((inboundState: object, key) => {
      const blacklistPathsForKey = blacklistPaths.filter((path) => path.startsWith(`${String(key)}.`)).map((path) => path.substr(String(key).length + 1));
      return omit(inboundState, ...blacklistPathsForKey);
    }, null),
  ],
};

export const persistedReducer = persistReducer(persistConfig, rootReducer);
const initialState = {};

export const store = createStore<RootState, RootAction, any, any>(
  persistedReducer,
  initialState,
  enhancer,
);

export const persistor = persistStore(store);
