import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "rentButton", "backButton"]

  connect() {
    if (this.togglableElementTarget.querySelector(".is-invalid")) {
      this.togglableElementTarget.classList.remove("d-none");
      this.rentButtonTarget.classList.add("d-none");
      this.backButtonTarget.classList.add("d-none");
    }

    console.log("hello from toggle controller")
  }

  fire(event) {
    event.preventDefault();
    this.togglableElementTarget.classList.toggle("d-none");
    this.rentButtonTarget.classList.add("d-none");
    this.backButtonTarget.classList.add("d-none");
  }
}
