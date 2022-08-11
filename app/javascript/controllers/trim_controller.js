import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['newTrimFields']

  addNewFields() {
    const trimForm = this.newTrimFieldsTarget.content.cloneNode(true);
    const trimLabels = trimForm.querySelectorAll('label');
    const trimInputs = trimForm.querySelectorAll('input');
    const currentTime = Date.now();

    const generateUniqueValue = function(element, attribute) {
      const currentAttributeValue = element.getAttribute(attribute);
      return currentAttributeValue.replace('0', currentTime);
    };

    trimLabels.forEach((label) => label.setAttribute('for', generateUniqueValue(label, 'for')));
    trimInputs.forEach((input) => input.setAttribute('id', generateUniqueValue(input, 'id')));
    trimInputs.forEach((input) => input.setAttribute('name', generateUniqueValue(input, 'name')));

    this.element.append(trimForm);
  }
}
