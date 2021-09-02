function priceCalc() {
  let quantity = document.querySelector('#booking_tickets_count');
  const priceString = document.querySelector('#price-div');
  const price = parseInt(priceString.dataset.price, 10);

  quantity.addEventListener('change', (event) => {

    let quantityAmount = parseInt(event.target.value, 10);
    let total = price * quantityAmount;
  priceString.innerText = `£${total}.00`;
  });
}


export { priceCalc }
