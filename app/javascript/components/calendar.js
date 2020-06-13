import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const convertDate = (inputFormat) => {
  function pad(s) { return (s < 10) ? '0' + s : s; }
  var d = new Date(inputFormat)
  return [pad(d.getDate()), pad(d.getMonth()+1), d.getFullYear()].join('/')
}

const nbDays = (date1, date2) => {
  const dateToTime1 = new Date(date1.split('/')[2],date1.split('/')[1]-1,date1.split('/')[0]);
  const dateToTime2 = new Date(date2.split('/')[2],date2.split('/')[1]-1,date2.split('/')[0]);
  const timeDiff = Math.abs(dateToTime2.getTime() - dateToTime1.getTime());
  return Math.ceil(timeDiff / (1000 * 3600 * 24));
}

const numberWithSpaces = (x) => {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ");
}

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const startDateInput2 = document.getElementById('booking_start_date_bis');
  const endDateInput2 = document.getElementById('booking_end_date_bis');
  const nightNb = document.getElementById('night_nb');
  const totalPrice = document.getElementById('total_price');

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
    // debugger;
    if (nbDays(sessionStorage.startDate,sessionStorage.endDate) === 1) {
      nightNb.innerHTML =`<strong>Total : ${nbDays(sessionStorage.startDate,sessionStorage.endDate)} nuit</strong>`;
    } else {
      nightNb.innerHTML =`<strong>Total : ${nbDays(sessionStorage.startDate,sessionStorage.endDate)} nuits</strong>`;
    }
    totalPrice.innerHTML = `<strong>${numberWithSpaces(nbDays(sessionStorage.startDate,sessionStorage.endDate) * totalPrice.dataset.ppd)}€</strong>`;

    flatpickr(startDateInput2, {
      minDate: 'today',
      dateFormat: 'd/m/Y',
      defaultDate: [sessionStorage.startDate,sessionStorage.endDate],
      plugins: [new rangePlugin({ input: endDateInput2})],
      disable: unvailableDates,
      onClose: function(selectedDates) {
        sessionStorage.setItem("startDate", convertDate(selectedDates[0]));
        sessionStorage.setItem("endDate", convertDate(selectedDates[1]));
        if (nbDays(sessionStorage.startDate,sessionStorage.endDate) === 1) {
          nightNb.innerHTML =`<strong>Total : ${nbDays(sessionStorage.startDate,sessionStorage.endDate)} nuit</strong>`;
        } else {
          nightNb.innerHTML =`<strong>Total : ${nbDays(sessionStorage.startDate,sessionStorage.endDate)} nuits</strong>`;
        }
        totalPrice.innerHTML = `<strong>${numberWithSpaces(nbDays(sessionStorage.startDate,sessionStorage.endDate) * totalPrice.dataset.ppd)}€</strong>`;
      }
    });
  }
}

export { toggleDateInputs }
