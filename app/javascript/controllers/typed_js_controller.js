import { Controller } from "stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  
  static values = {
    tips: String
  }

  connect() {
    console.log(this.tipsValue)
      if (window.location.pathname == "/quests") {
        var questsString = {
          strings: ['This is only the beginning of your journey.', 'My name is Shiba and I will help you during your journey !', 'You are on your way to become a wonderful hero.'],
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
          strings: ["Trust yourself !", "You can become anything you want.", "Do it for yourself, you deserve to become a hero"],
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
