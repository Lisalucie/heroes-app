import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["progressBar", "progressUser"]

  // connect() {
  //   console.log("Hello from progress bar")
  // }


  updateBar() {
    console.log(this.progressBarTarget)
    this.progressBarTarget.classList.add("progress-striped")
  }


  

}
