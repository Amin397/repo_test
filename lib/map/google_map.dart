import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {

  final LatLng expertLocation = LatLng(35.6993392, 51.3021666);
  final LatLng userLocation = LatLng(35.6593392, 51.3221666);
  Completer<GoogleMapController> _controller = Completer();

  final MarkerId markerIdExpert = MarkerId("expert");
  final MarkerId markerIdUser = MarkerId("user");

  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _setCustomMapPin();
  }

  void _setCustomMapPin() async {
    BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(10 , 10)),
        'assets/images/car_accident.png').then((value) =>
    pinLocationIcon = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          markers: _markers,
          mapType: MapType.normal,
          trafficEnabled: true,
          myLocationButtonEnabled: true,
          buildingsEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(target: expertLocation, zoom: 12.0),
          onMapCreated: _onMapCreated,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          changeCamera(_controller);
        },
        child: Icon(Icons.my_location , color: Colors.white,),
      ),
    );
  }

  Future<void> changeCamera(Completer con) async{
    GoogleMapController am = await _controller.future;
    am.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(zoom: 18.5 , target: userLocation ,bearing: 40.0, tilt: 65.0)));
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

    setState(() {
      _markers.add(Marker(
        markerId: markerIdExpert,
        position: expertLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(12.0)
      ));

      _markers.add(Marker(
        markerId: markerIdUser,
        position: userLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(10.0)
      ));
    });
  }
}
