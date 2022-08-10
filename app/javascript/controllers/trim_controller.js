import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['newTrimFields']

  addNewFields() {
    const trimForm = this.newTrimFieldsTarget.content.cloneNode(true);
    this.element.append(trimForm);
  }
}
