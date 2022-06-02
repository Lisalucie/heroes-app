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
          strings: ['I am your guide ! ', 'My name is Shiba and I will help you during your journey !'],
          typeSpeed: 40,
          showCursor: false,
          loop: true,
        };
        new Typed('.shiba-speech', questsString);

      } else if (this.hasTipsValue) {
        var questString = {
          strings: [this.tipsValue],
          typeSpeed: 40,
          showCursor: false,
          loop: true,
        };
        new Typed('.shiba-speech', questString);
      } else {
        var questString = {
          strings: ["Trust yourself", "You can become anything you want"],
          typeSpeed: 40,
          showCursor: false,
          loop: true,
        };
        new Typed('.shiba-speech', questString);
      }
    }
  }
