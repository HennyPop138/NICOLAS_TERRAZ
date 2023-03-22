import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meatballs"
export default class extends Controller {
  static targets = [ "menu" ]

  toggleMenu(event) {
    event.preventDefault()
    this.menuTarget.toggleAttribute("hidden")
  }

  // hideMenu(event) {
  //   if (this.element.contains(event.target)) return
  //   this.menuTarget.setAttribute("hidden")
  // }

  // connect() {
  //   document.addEventListener("click", this.hideMenu.bind(this))
  // }

  // disconnect() {
  //   document.removeEventListener("click", this.hideMenu.bind(this))
  // }
}
