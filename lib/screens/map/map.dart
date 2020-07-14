import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sanannegarexperts/model/request_model.dart';
import 'package:sanannegarexperts/screens/last_form/last_form.dart';
import 'package:sanannegarexperts/screens/widgets/car_tag.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class MapRoute extends StatefulWidget {
  Request reequest;

  MapRoute(Request amin) {
    this.reequest = amin;
  }

  @override
  _MapRouteState createState() => _MapRouteState();
}

class _MapRouteState extends State<MapRoute> {
  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = {};
  double _originLatitude = 6.5212402, _originLongitude = 3.3679965;

  @override
  void initState() {
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

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          bottomSheet: SolidBottomSheet(
            maxHeight: height * .4,
            smoothness: Smoothness.high,
            showOnAppear: true,
            draggableBody: true,
            autoSwiped: false,
            toggleVisibilityOnTap: true,
            elevation: 10.0,
            headerBar: Container(
              height: height * .06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white.withOpacity(.8),
              ),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_up),
                  Text(
                    "اطلاعات کاربر",
                    style: TextStyle(
                        height: 1,
                        fontFamily: "IRANSans",
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )),
            ),
            body: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: (height * .55) * .2,
                    left: width * .01,
                    child: Container(
                      height: (height * .55) * .35,
                      width: width * .5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/car_pic.png'))),
                    ),
                  ),
                  Positioned(
                    top: (height * .55) * .07,
                    right: width * .03,
                    child: Container(
                      width: width * .56,
                      child: CarTag(),
                    ),
                  ),
                  Positioned(
                    right: width * .03,
                    top: (height * .55) * .25,
                    child: Text(
                      '${widget.reequest.result.customer.fname} ${widget.reequest.result.customer.lname}',
                      style: TextStyle(
                        fontFamily: "IRANSans",
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: width * .03,
                    top: (height * .55) * .38,
                    child: Text(
                      '${widget.reequest.result.car.name}   ${widget.reequest.result.car.color}',
                      style: TextStyle(
                          fontFamily: "IRANSans",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                  ),
                  Positioned(
                    right: width * .03,
                    top: (height * .55) * .5,
                    child: Container(
                      height: 20.0,
                      width: width * .5,
                      child:Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Text(
                                  'زمان تقریبی تا مقصد:',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                      fontFamily: "IRANSans",
                                    height: 1
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  ' 7 دقیقه',
                                  style: TextStyle(
                                    fontFamily: "IRANSans",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => LastForm()));
                        },
                        child: Container(
                          height: height * .07,
                          width: width * .6,
                          decoration: BoxDecoration(
                              color: Colors.yellowAccent.shade700,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0))),
                          child: Center(
                            child: Text('به مقصد رسیدم'),
                          ),
                        ),
                      )),
                ],
              ),
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
          )),
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
