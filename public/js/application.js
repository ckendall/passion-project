// $(document).ready(function() {
//   getCoordinates();
//  });


var getCoordinates = function(){

  var url = "/spaceships"
  var request = $.ajax({
    url: url,
    type: "GET",
    dataType: "JSON"
  })

  request.done(function(data){
    console.log(data)
      // Create a map object and specify the DOM element for display.
      var latLang = {lat: data.latitude, lng: data.longitude}
      var map = new google.maps.Map(document.getElementById('map'), {
        center: latLang,
        scrollwheel: false,
        zoom: 4
      });

      var marker = new google.maps.Marker({
        position: latLang,
        map: map
      })
  })

  request.fail(function(data){
    console.log("Noooooooo")
  })
}


// setTimeout(function() { location.reload(); }, (1000 * 10));
