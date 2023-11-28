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

/*Slider js started*/

const videoIds = [
  "VIDEO_ID_1",
  "VIDEO_ID_2",
  "VIDEO_ID_3",
  "VIDEO_ID_4",
  "VIDEO_ID_5",
];
const sliderTrack = document.getElementById("sliderTrack");
let slideIndex = 0;
let players = [];

function onYouTubeIframeAPIReady() {
  // Create YouTube players
  videoIds.forEach((videoId) => {
    const player = new YT.Player(videoId, {
      height: "100%",
      width: "100%",
      videoId: videoId,
      events: {
        onReady: onPlayerReady,
      },
    });
    players.push(player);
  });
}

function onPlayerReady(event) {
  event.target.playVideo();
  event.target.mute(); // Autoplay requires muting the player
}

function nextSlide() {
  players[slideIndex].stopVideo();
  slideIndex = (slideIndex + 1) % videoIds.length;
  updateSlider();
}

function prevSlide() {
  players[slideIndex].stopVideo();
  slideIndex = (slideIndex - 1 + videoIds.length) % videoIds.length;
  updateSlider();
}

function updateSlider() {
  const newTransformValue = `translateX(-${slideIndex * 100}%)`;
  sliderTrack.style.transform = newTransformValue;
  players[slideIndex].playVideo();
}

// You can use setInterval to automatically slide to the next video
// setInterval(nextSlide, 5000); // Slide every 5 seconds

// Slider js ended
