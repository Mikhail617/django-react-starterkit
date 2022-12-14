import React, { Component } from "react";
import { render } from "react-dom";
//import HomePage from "./HomePage";

export default class App extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        //<HomePage />
      This is a Django-React Starter Kit Test!
      </div>
    );
  }
}

const appDiv = document.getElementById("app");
render(<App />, appDiv);
