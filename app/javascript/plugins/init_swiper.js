import Swiper, {Navigation} from "swiper"

const initSwiper = () => {
  const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'horizontal',
    modules: [Navigation],

    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
}

export { initSwiper }
