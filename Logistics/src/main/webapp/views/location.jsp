<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Map</title>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous"></script> 
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCoB-BsEvPcyikw7T2AudyFfOpQknFLbGI&callback=myMap"></script>
    </head>
    <body>
        <input type="text" id="lat">
        <input type="text" id="long">
        <button id="load_button">load</button>
        <div id="map" style="width:100%;height:400px;"></div>
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
        var rootRef = firebase.database().ref().child('Map');
        $('#load_button').click(function(){
            rootRef.on('value',function(snapshot){
                $('#lat').val(snapshot.child('lat').val());
                $('#long').val(snapshot.child('long').val());
                var lat1 = snapshot.child('lat').val();
                var long1 = snapshot.child('long').val();
                console.log(lat1);
                console.log(long1);
                var myLatlng = new google.maps.LatLng(lat1,long1);
                var mapOptions = {
                zoom: 15,
                center: myLatlng
                }
                var myLatlng1 = new google.maps.LatLng(19.361948,72.853556);
                var map = new google.maps.Map(document.getElementById("map"), mapOptions);
                var marker1 = new google.maps.Marker({position: myLatlng,title:"Hello World!"});
                var marker2 = new google.maps.Marker({position: myLatlng1,title:"Hello World!"});
                marker1.setMap(map);
                marker2.setMap(map);
            })
        })
        </script>
    </body>
</html>