const enableButton = () => {
  const city = document.getElementById('city');
  const booking_start_date = document.getElementById('booking_start_date');
  const booking_end_date = document.getElementById('booking_end_date');
  const guests = document.getElementById('guests');

  document.querySelectorAll(".field").forEach((f) => {
    f.addEventListener("change", (event) => {
      var empty = false;
      if (city.value === "" || booking_start_date.value === "" || booking_end_date.value === "" || guests.value === "Voyageurs") {
        empty = true;
      }
      if (empty === true) {
        document.getElementById("button-search").disabled = true;
      } else {
        document.getElementById("button-search").disabled = false;
      }
    });
  });
}

export { enableButton }
