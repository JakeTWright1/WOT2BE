import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["search"]

  revealSearch() {
    this.searchTarget.classList.remove("d-none")
  }
}
