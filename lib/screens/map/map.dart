import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

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

    Timer.periodic(new Duration(seconds: 3), (timer) async {});

    _addMarker(LatLng(_originLatitude, _originLongitude), "destination",
        BitmapDescriptor.defaultMarker);
  }

  @override
  Widget build(BuildContext context) {
    bool _showSecond = true;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        bottomSheet: SolidBottomSheet(
          maxHeight: height * .5,
          smoothness: Smoothness.high,
          draggableBody: true,
          elevation: 10.0,
          toggleVisibilityOnTap: true,
          onHide: (){
            setState(() {
              _showSecond = !_showSecond;
            });
          },
          headerBar: Container(
            height: height * .06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),),
              color: Colors.white.withOpacity(.8),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_up),
                  Text("اطلاعات کاربر" ,
                    style: TextStyle(
                      height: 1,
                        color: Colors.black , fontWeight: FontWeight.w600
                    ),),
                ],
              )
            ),
          ),
          body: Container(
            color: Colors.red,
          ),
        ),
        body: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Hero(
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
            ),
          ],
        ));
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
