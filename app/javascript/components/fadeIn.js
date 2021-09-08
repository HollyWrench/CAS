function fadeIn() {
  var tog = document.getElementById("tog");
  var thing = document.getElementById("thing");
  tog.addEventListener("click", function() {
    thing.classList.toggle("m-fadeOut");
  });
}

export { fadeIn }
