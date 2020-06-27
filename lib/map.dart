//
//
//import 'dart:async';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//class map extends StatefulWidget {
//  @override
//
//    mapState createState() => new mapState();
//  }
//
//
//class mapState extends State<map>{
//  Map<PolylineId, Polyline> _mapPolylines = {};
//  int _polylineIdCounter = 1;
//  List<LatLng> _createPoints() {
//    final List<LatLng> points = <LatLng>[];
//    points.add(LatLng(1.875249, 0.845140));
//    points.add(LatLng(4.851221, 1.715736));
//    points.add(LatLng(8.196142, 2.094979));
//    points.add(LatLng(12.196142, 3.094979));
//    points.add(LatLng(16.196142, 4.094979));
//    points.add(LatLng(20.196142, 5.094979));
//    return points;
//
//  }
//  void _add() {
//    final String polylineIdVal = 'polyline_id_$_polylineIdCounter';
//    _polylineIdCounter++;
//    final PolylineId polylineId = PolylineId(polylineIdVal);
//
//    final Polyline polyline = Polyline(
//      polylineId: polylineId,
//      consumeTapEvents: true,
//      color: Colors.red,
//      width: 5,
//      points: _createPoints(),
//    );
//
//    setState(() {
//      _mapPolylines[polylineId] = polyline;
//    });
//  }
//  Completer<GoogleMapController> _controller =Completer();
//  GoogleMapController mapController;
//  static const LatLng _center = const LatLng(45.521563, -122.677433);
//  LatLng _lastMapPosition = _center;
//  _onMapCreated(GoogleMapController controller) {
//    _controller.complete(controller);
//  }
//
//  _oncamraMove(CameraPosition position){
//    _lastMapPosition = position.target;
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("maps"),
//        actions: <Widget>[IconButton(icon: Icon(Icons.map), onPressed: _add)],
//      ),
//      body: GoogleMap(
//        onMapCreated: _onMapCreated,
//        initialCameraPosition: CameraPosition(
//        target: _center,
//        zoom: 11.0,
//      ),
//        onCameraMove: _oncamraMove,
//      ),
//
//      );
//  }
//}
