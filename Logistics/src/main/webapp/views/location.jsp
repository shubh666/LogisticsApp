<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Map</title>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous"></script> 
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCoB-BsEvPcyikw7T2AudyFfOpQknFLbGI&callback=myMap"></script>
    </head>
    <body>
    	<c:if test="${sessionScope.uname == null}">
					<c:redirect url="/"></c:redirect>
			</c:if>
        <div id="map" style="width:100%;height:800px;"></div>

        <input type="hidden" name="vehicleId" value="${vehicleId}" class="form-control" id="vno" readonly>
        
        <script src="https://www.gstatic.com/firebasejs/7.7.0/firebase.js"></script>
        <script>
        var firebaseConfig = {
        apiKey: "AIzaSyD1yWWLryBXcGsmKsPQ3Dc1dE8sARvBtJs",
        authDomain: "project1-1fe53.firebaseapp.com",
        databaseURL: "https://project1-1fe53.firebaseio.com",
        projectId: "project1-1fe53",
        storageBucket: "project1-1fe53.appspot.com",
        messagingSenderId: "212831520136",
        appId: "1:212831520136:web:759e7de212f14ac88b663d"
        };
        firebase.initializeApp(firebaseConfig);
		var vno = document.getElementById("vno").value;
        var rootRef = firebase.database().ref().child('Map').child(vno);
        $(document).ready(function(){
            rootRef.on('value',function(snapshot){
                $('#lat').val(snapshot.child('lat').val());
                $('#long').val(snapshot.child('long').val());
                var lat1 = snapshot.child('lat').val();
                var long1 = snapshot.child('long').val();
                var myLatlng = new google.maps.LatLng(lat1,long1);
                var mapOptions = {
                zoom: 15,
                center: myLatlng
                }
		var icon = {
        	    url: 'http://maps.google.com/mapfiles/kml/shapes/truck.png', // url
        	    scaledSize: new google.maps.Size(50, 50), // scaled size
        	    origin: new google.maps.Point(0,0), // origin
        	    anchor: new google.maps.Point(0, 0) // anchor
        	};
                var map = new google.maps.Map(document.getElementById("map"), mapOptions);
                var marker2 = new google.maps.Marker({position: myLatlng, icon: icon, title: vno});
                marker2.setMap(map);
            })
        })
        </script>
    </body>
</html>