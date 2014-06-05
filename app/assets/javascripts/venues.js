// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
    var map;
    $(document).ready(function(){
      map = new GMaps({
        div: '#map',
        lat: -23.550523,
        lng: -46.634298
      });

      GMaps.geocode({
        address: $('#address').text().trim(),
        callback: function(results, status){
          if(status=='OK'){
            var latlng = results[0].geometry.location;
            map.setCenter(latlng.lat(), latlng.lng());
            map.addMarker({
              lat: latlng.lat(),
              lng: latlng.lng(),
              title: $('#address_name').text()
            });
          }
        }
      });

    });
