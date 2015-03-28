google.maps.event.addDomListener(window, "load", function() {

  //
  // initialize map
  //
  var map = new google.maps.Map(document.getElementById("mapdiv"), {
    center: new google.maps.LatLng(16.4167,120.6000),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  //
  // initialize marker
  //
  var marker = new google.maps.Marker({
    position: map.getCenter(),
    draggable: true,
    map: map
  });

  //
  // intercept map and marker movements
  //
  google.maps.event.addListener(map, "idle", function() {
    marker.setPosition(map.getCenter());
  });

  google.maps.event.addListener(marker, 'dragend', function (event) {
      var lat = this.getPosition().lat();
      var lng = this.getPosition().lng();
      alert(lat);
      marker.setPosition(map.LatLng(lat,lng));

      //Display the details
      document.getElementById("mapoutput").innerHTML = "Latitude: " + lat + "<br>Longitude: " + lng;

      //use an AJAX function to save the lat/lng to the database
      $.ajax({
          type:'POST',
          data:{latitude:lat, longitude:lng},
          url:"additemProcess.php",
          success:function(response){
              if(reponse=="success"){
                  alert('Location marked');
              }
              else{
                  alert('Cant mark location');
              }
          },
          error:function(){
              alert('An error occured');
          }
      });
  });

  //
  // initialize geocoder
  //
  var geocoder = new google.maps.Geocoder();
  google.maps.event.addDomListener(document.getElementById("mapform"), "submit", function(domEvent) {
    if (domEvent.preventDefault){
      domEvent.preventDefault();
    } else {
      domEvent.returnValue = false;
    }
    geocoder.geocode({
      address: document.getElementById("mapinput").value
    },function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
          var result = results[0];
          document.getElementById("mapinput").value = result.formatted_address;
          if (result.geometry.viewport) {
            map.fitBounds(result.geometry.viewport);
          }
          else {
            map.setCenter(result.geometry.location);
          }
        } else if (status == google.maps.GeocoderStatus.ZERO_RESULTS) {
          alert("Sorry, the geocoder failed to locate the specified address.");
        } else {
          alert("Sorry, the geocoder failed with an internal error.");
        }
      });
  });
});