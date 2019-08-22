const bookReservation = () => {

  // const arrivalInput = document.querySelector('.booking_check_in_date');
  const departureInput = document.querySelector('.booking_check_out_date');
  const pricePerDayIsland = document.querySelector('.price-island-per-day');
  const totalPriceReservation = document.querySelector('.total-price-island');
  const days = document.querySelector('#total-price');
  const buttonValidationReservation = document.querySelector('.simple_form reserve-button');
  console.log(buttonValidationReservation)

  departureInput.addEventListener('change', (event) => {
    console.log(event);
    const yearCheckIn = document.querySelector('#booking_check_in_date_1i').value
    const monthCheckIn = document.querySelector('#booking_check_in_date_2i').value
    const dayCheckIn = document.querySelector('#booking_check_in_date_3i').value
    const departureDate = new Date(`${monthCheckIn}/${dayCheckIn}/${yearCheckIn}`);

    console.log("departureDate");
    console.log(departureDate);

    const yearCheckOut = document.querySelector('#booking_check_out_date_1i').value
    const monthCheckOut = document.querySelector('#booking_check_out_date_2i').value
    const dayCheckOut = document.querySelector('#booking_check_out_date_3i').value
    const arrivalDate = new Date(`${monthCheckOut}/${dayCheckOut}/${yearCheckOut}`);

    console.log(arrivalDate)

    const totalDays = (arrivalDate - departureDate) / 86400000 + 1;
    console.log(totalDays)
    const totalPrice = (totalDays * 10)
    days.innerText = `${totalPrice}`;
    // totalPriceReservation.innerText = `${totalDays * parseInt(pricePerDayIsland).innerText, 10 } euros`;
    console.log(totalPriceReservation)
  });
}

export default bookReservation;
