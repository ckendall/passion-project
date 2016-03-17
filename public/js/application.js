// $(document).ready(function() {

//  };

function initMap() {
  var chicago = new google.maps.LatLng(41.850, -87.650);

  var map = new google.maps.Map(document.getElementById('map'), {
    center: chicago,
    zoom: 3
  });
}
