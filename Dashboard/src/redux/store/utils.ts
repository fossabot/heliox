import { composeWithDevTools } from "remote-redux-devtools";

// Access Redux devtools via http://localhost:8000
const composeEnhancers = composeWithDevTools({
  name: "Light-Control",
  realtime: true,
  secure: false,
  hostname: "localhost",
  port: 8000,
});

export default composeEnhancers;
