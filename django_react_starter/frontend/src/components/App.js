import React, { Component } from "react";
import { render } from "react-dom";
import HomePage from "./HomePage";

import ContactForm from '../components/ContactForm';

export default class App extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <ContactForm />
      </div>
    );
  }
}

const appDiv = document.getElementById("app");
render(<App />, appDiv);