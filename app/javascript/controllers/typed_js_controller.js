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
          strings: ['I am your guide ! ', 'My name is Shiba and I will help you during your journey !', 'and Charlie is really really nice'],
          typeSpeed: 40,
          showCursor: false
        };
        new Typed('.shiba-speech', questsString);

      } else if (this.hasTipsValue) {
        var questString = {
          strings: [this.tipsValue],
          typeSpeed: 40,
          showCursor: false
        };
        new Typed('.shiba-speech', questString);
      } else {
        var questString = {
          strings: ["Trust yourself bro or sis'"],
          typeSpeed: 40,
          showCursor: false
        };
        new Typed('.shiba-speech', questString);
      }
    }
  }
