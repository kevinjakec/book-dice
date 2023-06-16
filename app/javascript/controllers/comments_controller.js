import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  initialize() {}
  connect() {}
  addtoggleForm(event) {
    console.log("Test");
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const form = document.getElementById(formID);
    form.classList.toggle("hidden");
  }
  edittoggleForm(event) {
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
