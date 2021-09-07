// let cards = document.querySelectorAll('.flip-card');
// console.log(cards);

function flip() {
  document.querySelectorAll('.flip-card').forEach(card => card.addEventListener("click", function (event) {
    this.querySelector('.flip-card-inner').classList.toggle('flipped')
  })
  );
};

// cards.forEach(flip)

export { flip }
