import { Controller } from "stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  // static targets = [ "output" ]

  static values = {
    tips: String
  }

  connect() {
    console.log(this.tipsValue)
      if (window.location.pathname == "/quests") {
        var questsString = {
          strings: ['I hope you have a great day !', 'My name is Shiba and I will help you during your journey !'],
          showCursor: false,
          loop: true,
          typeSpeed: 30,
          smartBackspace: true,
          backDelay: 4000,
        };
        new Typed('.shiba-speech', questsString);

      } else if (this.hasTipsValue) {
        var questString = {
          strings: [this.tipsValue],
          showCursor: false,
          loop: true,
          typeSpeed: 30,
          smartBackspace: true,
          backDelay: 4000,
        };
        new Typed('.shiba-speech', questString);
      } else {
        var questString = {
          strings: ["Trust yourself", "You can become anything you want"],
          showCursor: false,
          loop: true,
          typeSpeed: 30,
          smartBackspace: true,
          backDelay: 4000,
        };
        new Typed('.shiba-speech', questString);
      }
    }
  }
