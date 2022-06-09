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
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
    },
  });
}

export { initSwiper }
