import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["progressBar"]

  connect() {
    console.log(this.progressBarTarget)
  }

  updateBar() {
    // debugger
    console.log(this.progressBarTarget)
    this.progressBarTarget.classList.add("progress-striped")
    this.progressBarTarget.style.width = `${this.progressBarTarget.dataset.nextValue}%`
  }
}
