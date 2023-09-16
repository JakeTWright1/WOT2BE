import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="info-on-scroll"
export default class extends Controller {
  connect() {
    console.log("HELLO")
  }
}
