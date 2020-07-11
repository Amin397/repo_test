import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapRoute extends StatefulWidget {

  @override
  _MapRouteState createState() => _MapRouteState();

}

class _MapRouteState extends State<MapRoute> {

  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = {};
  double _originLatitude = 6.5212402, _originLongitude = 3.3679965;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(new Duration(seconds: 3), (timer) async {

    });

    _addMarker(LatLng(_originLatitude, _originLongitude), "destination",
        BitmapDescriptor.defaultMarker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Hero(
              tag: "hero1",
              child: GoogleMap(
                markers: Set<Marker>.of(markers.values),
                mapType: MapType.normal,
                onMapCreated: _onMapCreated,
                myLocationButtonEnabled: true,
                buildingsEnabled: true,
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                    target: LatLng(_originLatitude, _originLongitude),
                    zoom: 15.0),
              ),
            ),
          ],
        )
    );
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
}
