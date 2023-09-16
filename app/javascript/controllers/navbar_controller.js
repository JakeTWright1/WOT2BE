import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  // static targets = ["search"];
  connect() {
    console.log("hello");
  }

  revealSearch() {
    console.log("hello");
    // this.searchTarget.classList.toggle("d-none");
  }
}
