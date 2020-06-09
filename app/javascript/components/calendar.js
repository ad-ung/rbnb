import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const convertDate = (inputFormat) => {
  function pad(s) { return (s < 10) ? '0' + s : s; }
  var d = new Date(inputFormat)
  return [pad(d.getDate()), pad(d.getMonth()+1), d.getFullYear()].join('/')
}

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const startDateInput2 = document.getElementById('booking_start_date_bis');
  const endDateInput2 = document.getElementById('booking_end_date_bis');

  if (startDateInput && endDateInput) {
    flatpickr(startDateInput, {
      minDate: 'today',
      dateFormat: 'd/m/Y',
      plugins: [new rangePlugin({ input: endDateInput})],
      onClose: function(selectedDates) {
        sessionStorage.setItem("startDate", convertDate(selectedDates[0]));
        sessionStorage.setItem("endDate", convertDate(selectedDates[1]));
      }
    });
  }

  if (startDateInput2 && endDateInput2) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable);
    debugger;
    flatpickr(startDateInput2, {
      minDate: 'today',
      dateFormat: 'd/m/Y',
      defaultDate: [sessionStorage.startDate,sessionStorage.endDate],
      disable: unvailableDates,
      plugins: [new rangePlugin({ input: endDateInput2})]
    });
  }
}

export { toggleDateInputs }
