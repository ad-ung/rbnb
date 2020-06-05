const initUpdateNavbarOnScroll = () => {
  const navbar = document.getElementById("nav-homepage");
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight * 30 / 100) {
        navbar.classList.add('bg-dark');
      } else {
        navbar.classList.remove('bg-dark');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
