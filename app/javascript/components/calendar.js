const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const startDateInput2 = document.getElementById('booking_start_date_bis');
  const endDateInput2 = document.getElementById('booking_end_date_bis');
  if (startDateInput && endDateInput) {
    // const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)

    flatpickr(startDateInput, {
    minDate: 'today',
    dateFormat: 'd/m/Y',
    // disable: unvailableDates,
    // onChange: function(selectedDates, selectedDate) {
    //   if (selectedDate === '') {
    //     endDateInput.disabled = true;
    //   }
    //   let minDate = selectedDates[0];
    //   minDate.setDate(minDate.getDate() + 1);
    //   endDateCalendar.set('minDate', minDate);
    //   endDateInput.disabled = false;
    // }
  });
    flatpickr(endDateInput, {
      dateFormat: 'd/m/Y',
      minDate: 'today'
        // disable: unvailableDates,
    });
  }

  if (startDateInput2 && endDateInput2) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
    flatpickr(startDateInput2, {
    minDate: 'today',
    dateFormat: 'd/m/Y',
    disable: unvailableDates,
    // onChange: function(selectedDates, selectedDate) {
    //   if (selectedDate === '') {
    //     endDateInput.disabled = true;
    //   }
    //   let minDate = selectedDates[0];
    //   minDate.setDate(minDate.getDate() + 1);
    //   endDateCalendar.set('minDate', minDate);
    //   endDateInput.disabled = false;
    // }
  });
    flatpickr(endDateInput2, {
      dateFormat: 'd/m/Y',
      minDate: 'today',
      disable: unvailableDates,
    });
  }
};

export { toggleDateInputs }

