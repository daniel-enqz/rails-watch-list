import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    if (window.scrollY >= 2) {
      this.element.classList.add("blur-navbar")
    } else {
      this.element.classList.remove("blur-navbar")
    }
  };
}
