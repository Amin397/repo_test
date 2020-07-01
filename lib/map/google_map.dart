import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {

  GoogleMapController mapController;
  double _originLatitude = 6.5212402, _originLongitude = 3.3679965;
  double _destLatitude = 6.849660, _destLongitude = 3.648190;
  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = "AIzaSyCuXCI4BdcAI0ysDBC5Ip3VH3905edxZuo";

  @override
  void initState() {
    super.initState();


    /// origin marker
    _addMarker(LatLng(_originLatitude, _originLongitude), "origin",
        BitmapDescriptor.defaultMarker);

    /// destination marker
    _addMarker(LatLng(_destLatitude, _destLongitude), "destination",
        BitmapDescriptor.defaultMarkerWithHue(90));
    _getPolyline();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          markers: Set<Marker>.of(markers.values),
          polylines: Set<Polyline>.of(polylines.values),
          mapType: MapType.normal,
          trafficEnabled: true,
          myLocationButtonEnabled: true,
          buildingsEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(target: LatLng(_originLatitude , _originLongitude), zoom: 12.0),
          onMapCreated: _onMapCreated,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
//          changeCamera(_controller);

        },
        child: Icon(Icons.my_location , color: Colors.white,),
      ),
    );
  }

  Future<void> changeCamera(Completer con) async{
//    GoogleMapController am = await _controller.future;
//    am.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(zoom: 18.5 , target: userLocation ,bearing: 40.0, tilt: 65.0)));

//  PolylineResult result = await polylinePoints.getRouteBetweenCoordinates('AIzaSyCuXCI4BdcAI0ysDBC5Ip3VH3905edxZuo',
//      PointLatLng(userLocation.latitude, userLocation.longitude),
//      PointLatLng(expertLocation.latitude, expertLocation.longitude));
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
    Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }
  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }
  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyCuXCI4BdcAI0ysDBC5Ip3VH3905edxZuo",
        PointLatLng(_originLatitude, _originLongitude),
        PointLatLng(_destLatitude, _destLongitude),
        travelMode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
}
