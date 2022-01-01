/* eslint-disable no-param-reassign */
import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import ISerialConnectionState from "../../interfaces/ISerialConnectionState";
// import type { RootState } from "../store/types.d";

// Define the initial state using that type
const initialState: ISerialConnectionState = {
  port: "",
  message: "0,0,0,0",
  status: {
    connecting: false,
    connected: false,
    error: "",
  },
};

export const serialConnectionSlice = createSlice({
  name: "serialConnection",
  initialState,
  reducers: {
    setSerialPort: (state, action: PayloadAction<string>) => {
      state.port = action.payload;
    },
    connectionStart: (state) => {
      state.status.connecting = true;
      state.status.connected = false;
      state.status.error = "";
    },
    connectionSuccess: (state) => {
      state.status.connecting = false;
      state.status.connected = true;
      state.status.error = "";
    },
    connectionFailure: (state, action: PayloadAction<string>) => {
      state.status.connecting = false;
      state.status.connected = false;
      state.status.error = action.payload;
    },
    connectionEnd: (state) => {
      state.status.connecting = false;
      state.status.connected = false;
    },
    connect: () => {},
    disconnect: () => {},
    setMessage: (state, action: PayloadAction<string>) => {
      state.message = action.payload;
    },
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    sendMessage: (_state, _action: PayloadAction<string>) => {
    },
  },
});

export const {
  setSerialPort, connectionStart, connectionSuccess, connectionFailure, connectionEnd,
  connect, disconnect, setMessage, sendMessage,
} = serialConnectionSlice.actions;

// Other code such as selectors can use the imported `RootState` type
// export const selectCount = (state: RootState) => state.counter.value;

export default serialConnectionSlice.reducer;
