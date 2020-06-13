const showLocation = function() {

const city = document.querySelector('#city');

if (city) {
    var placesAutocomplete = places(
    {
      appId: 'plUAFVSHPPKI',
      apiKey: 'e3c231fbb2ecc349ee9cf48226ef0d1a',
      container: city,
      style: 'false'
    });
  }
}

export { showLocation }
