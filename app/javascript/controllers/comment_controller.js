import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  fillOutput(event) {
    this.outputTarget.textContent = event.target.value
  }
}
