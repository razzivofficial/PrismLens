/* Slider js by tushar start */
const slider = document.querySelector(".slider");
const slides = document.querySelectorAll(".slide");

let currentIndex = 0;

function nextSlide() {
  currentIndex = (currentIndex + 1) % slides.length;
  updateSlider();
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + slides.length) % slides.length;
  updateSlider();
}

function updateSlider() {
  const translateValue = -currentIndex * 100 + "%";
  slider.style.transform = "translateX(" + translateValue + ")";
}

setInterval(nextSlide, 10000);

document.addEventListener("DOMContentLoaded", function () {
  var container = document.querySelector(".l1");
  container.style.display = "block";
});

/* Slider js by tushar End */
