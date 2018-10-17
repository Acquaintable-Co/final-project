$(document).load(removeFlash());

function removeFlash() {
  setTimeout(() => {

    $('#notice').fadeOut(300, function () {
      this.remove();
    });
  }, 3000);
}

function showDetail (className) {
  var divs = document.getElementsByClassName(className)
  for (var div of divs) {
    if (div.classList.contains('hidden')) {
      div.classList.remove('hidden')
    } else {
      div.classList.add('hidden')
    }
  }
}
$(document).ready(function() {

  function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function (position) {
        var nearbyLink = $('#nearby-link');
        nearbyLink.attr('href', `/nearby?lat=${position.coords.latitude}&long=${position.coords.longitude}`);
        var nearbyLink = $('#nearby-link2');
        nearbyLink.attr('href', `/nearby?lat=${position.coords.latitude}&long=${position.coords.longitude}`);
      });
    }
  }

  getLocation();
});

function getLocation(){
  if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function (position){
         var lat = position.coords.latitude
         var long = position.coords.longitude
        console.log(lat)
        console.log(long)

         $.ajax({
          type: 'GET',
          url: '/nearby',
          data: { lat: position.coords.latitude, long: position.coords.longitude },
          contentType: 'application/json'
          });

      });
  }
}



window.onload = function () {
  var modalFare = document.querySelector("#modalFare");
  var triggerFare = document.querySelector("#triggerFare");
  var closeButtonFare = document.querySelector("#close-buttonFare");

  function toggleModalFare() {
    modalFare.classList.toggle("modal")
      modalFare.classList.toggle("show-modal");
  }

  function windowOnClickFare(event) {
      if (event.target === modalFare) {
          toggleModal();
      }
  }

  triggerFare.addEventListener("click", toggleModalFare);
  closeButtonFare.addEventListener("click", toggleModalFare);
  window.addEventListener("click", windowOnClickFare);

  var modalTips = document.querySelector("#modalTips");
  var triggerTips = document.querySelector("#triggerTips");
  var closeButtonTips = document.querySelector("#close-buttonTips");

  function toggleModalTips() {
    modalTips.classList.toggle("modal")
      modalTips.classList.toggle("show-modal");
  }

  function windowOnClickTips(event) {
      if (event.target === modalTips) {
          toggleModal();
      }
  }

  triggerTips.addEventListener("click", toggleModalTips);
  closeButtonTips.addEventListener("click", toggleModalTips);
  window.addEventListener("click", windowOnClickTips);

  var modalSpecs = document.querySelector("#modalSpecs");
  var triggerSpecs = document.querySelector("#triggerSpecs");
  var closeButtonSpecs = document.querySelector("#close-buttonSpecs");

  function toggleModalSpecs() {
    modalSpecs.classList.toggle("modal")
      modalSpecs.classList.toggle("show-modal");
  }

  function windowOnClickSpecs(event) {
      if (event.target === modalSpecs) {
          toggleModal();
      }
  }

  triggerSpecs.addEventListener("click", toggleModalSpecs);
  closeButtonSpecs.addEventListener("click", toggleModalSpecs);
  window.addEventListener("click", windowOnClickSpecs);

}
  
