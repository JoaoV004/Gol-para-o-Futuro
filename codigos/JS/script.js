const carouselInner = document.querySelector('.carousel-inner');
const carouselItems = document.querySelectorAll('.carousel-item');

let currentIndex = 0;

function showSlide(index) {
  const offset = -index * carouselItems[0].offsetWidth;
  carouselInner.style.transform = `translateX(${offset}px)`;
}

setInterval(() => {
  currentIndex = (currentIndex + 1) % carouselItems.length;
  showSlide(currentIndex);
}, 3000); 
