const bookReservation = () => {

  // const arrivalInput = document.querySelector('.booking_check_in_date');
  const departureInput = document.querySelector('.booking_check_out_date');
  const pricePerDayIsland = document.querySelector('#price-per-day');
  const totalPriceReservation = document.querySelector('.total-price-island');
  const price = document.querySelector('#total-price');
  const days = document.querySelector('#total-days');

  departureInput.addEventListener('change', (event) => {
    console.log(event);
    // recuperation des dates darrivees
    const yearCheckIn = document.querySelector('#booking_check_in_date_1i').value
    const monthCheckIn = document.querySelector('#booking_check_in_date_2i').value
    const dayCheckIn = document.querySelector('#booking_check_in_date_3i').value
    // creation de la date de depart
    const departureDate = new Date(`${monthCheckIn}/${dayCheckIn}/${yearCheckIn}`);

    console.log("departureDate");
    console.log(departureDate);
    // recuperation des dates darrivees
    const yearCheckOut = document.querySelector('#booking_check_out_date_1i').value
    const monthCheckOut = document.querySelector('#booking_check_out_date_2i').value
    const dayCheckOut = document.querySelector('#booking_check_out_date_3i').value
    // creation de la date de fin
    const arrivalDate = new Date(`${monthCheckOut}/${dayCheckOut}/${yearCheckOut}`);

    console.log(arrivalDate)

    const totalDays = (arrivalDate - departureDate) / 86400000;
    console.log(totalDays)
    const totalPrice = (totalDays * pricePerDayIsland.innerText)
    price.innerText = `${totalPrice} €`;
    days.innerText = `${totalDays}`
        // totalPriceReservation.innerText = `${totalDays * parseInt(pricePerDayIsland).innerText, 10 } euros`;
    console.log()
  });
}

export default bookReservation;
