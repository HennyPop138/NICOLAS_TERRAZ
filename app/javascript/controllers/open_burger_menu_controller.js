import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="open-burger-menu"
export default class extends Controller {
  static targets = [ "burgerMenu", "burgerMenuImage" ]

  connect() {
    console.log("hello from open-burger-menu controller");
  }

  toggleMobileMenu() {
    this.burgerMenuTarget.classList.toggle('open');
    this.burgerMenuImageTarget.classList.toggle('d-none');
  }

  myFunction() {
    var x = document.getElementById("myLinks");
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
  }
}
