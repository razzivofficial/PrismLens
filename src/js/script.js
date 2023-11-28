// navbar started ----->

// small screen
var card = document.getElementById("card");
var maincontainer = document.getElementById("main-container");
function openmenu() {
  card.style.right = "0";
}
function closemenu() {
  card.style.right = "-275px";
}

// sign in
function togglePopupsignin() {
  var popup = document.getElementById("signin-popup");
  var overlay = document.querySelector(".overlaysignin");

  if (popup.style.display === "block") {
    popup.style.display = "none";
    overlay.style.display = "none";
  } else {
    popup.style.display = "block";
    overlay.style.display = "block";
  }
}
function signIn() {
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;
  togglePopup();
}

// sign up
function togglePopupsignup() {
  var popup = document.getElementById("signup-popup");
  var overlay = document.querySelector(".overlaysignup");

  if (popup.style.display === "block") {
    popup.style.display = "none";
    overlay.style.display = "none";
  } else {
    popup.style.display = "block";
    overlay.style.display = "block";
  }
}
function signUp() {
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var mobile = document.getElementById("mobile").value;
  var password = document.getElementById("password").value;
  alert(
    "Name: " +
      name +
      "\nEmail: " +
      email +
      "\nMobile: " +
      mobile +
      "\nPassword: " +
      password
  );
  togglePopup();
  return false;
}

// -----> navbar ended

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

/* Slider js by tushar Ends */
