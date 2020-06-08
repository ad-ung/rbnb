import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const startDateInput2 = document.getElementById('booking_start_date_bis');
  const endDateInput2 = document.getElementById('booking_end_date_bis');

  if (startDateInput && endDateInput) {
    flatpickr(startDateInput, {
      minDate: 'today',
      dateFormat: 'd/m/Y',
      plugins: [new rangePlugin({ input: endDateInput})]
    });
  }

  if (startDateInput2 && endDateInput2) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable);
    flatpickr(startDateInput2, {
      minDate: 'today',
      dateFormat: 'd/m/Y',
      disable: unvailableDates,
      plugins: [new rangePlugin({ input: endDateInput2})]
    });
  }
}

export { toggleDateInputs }
