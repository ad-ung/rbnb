$(document).ready(function() {
  $(".toggle-button").click(function() {
    $(this).parent().find("#numberGuests").slideToggle(function() {
    });
  });
})
