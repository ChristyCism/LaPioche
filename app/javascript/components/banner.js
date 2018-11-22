import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["la pioche"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
