const showLocation = function() {

  var placesAutocomplete = places(
  {
    appId: 'plUAFVSHPPKI',
    apiKey: 'e3c231fbb2ecc349ee9cf48226ef0d1a',
    container: document.querySelector('#city'),
    style: 'false'
  });
}

export { showLocation }
