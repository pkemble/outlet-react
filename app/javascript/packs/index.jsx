import React from "react";
import { render } from "react-dom";
import Posts from '../components/Posts';

document.addEventListener("DOMContentLoaded", () => {
  render(<Posts />, document.body.appendChild(document.createElement("div")));
});