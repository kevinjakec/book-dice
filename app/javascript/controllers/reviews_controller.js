import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  initialize() {}
  connect() {}
  toggleForm(event) {
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const reviewBodyID = event.params["body"];
    const form = document.getElementById(formID);
    form.classList.toggle("hidden");
    const reviewBody = document.getElementById(reviewBodyID);
    reviewBody.classList.toggle("hidden");
  }
}
