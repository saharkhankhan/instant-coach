import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Achieve Your Goals", "Find a Coach Near You Today"],
    typeSpeed: 50,
    loop: true
  });
}

loadDynamicBannerText();
