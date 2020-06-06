import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Envie de vivre quelque chose d'exceptionnel ?", "La villa de vos rêves n'attend que vous."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
