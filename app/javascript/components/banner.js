import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["La villa de vos rêves à portée de main."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
