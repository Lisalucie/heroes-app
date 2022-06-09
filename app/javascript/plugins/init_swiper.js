import Swiper, {Navigation} from "swiper"

const initSwiper = () => {
  const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'horizontal',
    modules: [Navigation],

    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-prev',
      prevEl: '.swiper-button-next',
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
    },
  });
}

export { initSwiper }
