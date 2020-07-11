import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sanannegarexperts/model/request_model.dart';
import 'package:sanannegarexperts/screens/map/map.dart';

class EndPart extends StatefulWidget {
  Request request;

  EndPart(Request reequest) {
    this.request = reequest;
  }

  @override
  _EndPartState createState() => _EndPartState();
}

class _EndPartState extends State<EndPart> {

  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = {};
  double _originLatitude = 6.5212402, _originLongitude = 3.3679965;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _addMarker(LatLng(_originLatitude, _originLongitude), "destination",
        BitmapDescriptor.defaultMarker);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .04,
          right: MediaQuery.of(context).size.width * .04,
          bottom: MediaQuery.of(context).size.width * .04,
          top: MediaQuery.of(context).size.width * .03),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.blue.shade600,
                width: .8,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "hero1",
              child: Container(
                height: MediaQuery.of(context).size.height * .11,
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
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (BuildContext context) =>
                            MapRoute()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .11,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${widget.request.result.address}',
                style: TextStyle(color: Colors.black87, fontSize: 11.0),
              ),
            )
          ],
        ),
      ),
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
