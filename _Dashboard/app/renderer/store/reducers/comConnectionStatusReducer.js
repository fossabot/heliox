import { SET_CONNECTION_STATUS } from '../actions/actionTypes';

const initialState = false;

export default (state = initialState, { type, payload }) => {
  switch (type) {
    case SET_CONNECTION_STATUS:
      if (typeof payload === 'boolean') {
        return payload;
      } else {
        return state;
      }

    default:
      return state;
  }
};
