import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lateralnav"
export default class extends Controller {
  static targets = ["navbar"]

  openNavbar(e) {
    e.preventDefault()
    this.navbarTarget.classList.add("active")

  }
  closeNavbar(e) {
    e.preventDefault()
    this.navbarTarget.classList.remove("active")
  }
}
