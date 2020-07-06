import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sanannegarexperts/dashboard/ui/custom_clip_path.dart';
import 'package:sanannegarexperts/screens/request/task_row.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';

import 'initial_list.dart';
import 'list_model.dart';

class MainRequest extends StatefulWidget {
  @override
  _MainRequestState createState() => _MainRequestState();
}

class _MainRequestState extends State<MainRequest> {
  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = {};
  double _originLatitude = 6.5212402, _originLongitude = 3.3679965;

  final GlobalKey<AnimatedListState> _listKey =
      new GlobalKey<AnimatedListState>();
  ListModel listModel;

  ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _addMarker(LatLng(_originLatitude, _originLongitude), "destination",
        BitmapDescriptor.defaultMarker);

    listModel = new ListModel(_listKey, tasks);

    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * .27,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: SafeArea(
                        child: ClipPath(
                          child: Container(
                            height: height * .22,
                            width: width,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.lightBlue,
                                      Colors.lightBlueAccent,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                          clipper: CustomClipPath(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SafeArea(
                        child: ClipPath(
                          clipper: CustomClipPath(),
                          child: Container(
                            height: height * .12,
                            width: width * .7,
                            color: Colors.blue.shade600,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: height * .005),
                                  child: Text(
                                    'مقصر',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontFamily: 'IRANSans'),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
//ClipRRect from top of
                    Positioned(
                      left: width * .38,
                      top: height * .065,
                      child: Material(
                        elevation: 5.0,
                        shadowColor: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.fill,
                          ),
                          radius: 50,
                        ),
                      ),
                    ),
//user avatar
                    Positioned(
                      top: height * .16,
                      right: 0.0,
                      left: 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              height: height * .04,
                              width: width * .25,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade600,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black45,
                                        blurRadius: 5.0,
                                        spreadRadius: 1.0,
                                        offset: Offset(0.0, 2.0))
                                  ],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              child: Center(
                                child: Text(
                                  'اطلاعات کاربر',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'IRANSans'),
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              height: height * .04,
                              width: width * .25,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(0.0, 2.0))
                                ],
                                color: Colors.blue.shade600,
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'اطلاعات بیمه',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'IRANSans'),
                                ),
                              )),
                        ],
                      ),
                    ),
//user information
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: height * .013),
                          child: Text(
                            'حسن قلی خانی',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'IRANSans',
                                fontSize: 16.0),
                          ),
                        )),

                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * .1, vertical: height * .03),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Material(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  height: height * .05,
                                  width: height * .05,
                                  child: Center(
                                    child: Icon(
                                      Icons.phone_android,
                                      size: 21,
                                      color: Colors.lightGreenAccent.shade700,
                                    ),
                                  ),
                                ),
                                elevation: 10.0,
                                borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                              ),
                              Material(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  height: height * .05,
                                  width: height * .05,
                                  child: Center(
                                    child: Icon(
                                      Icons.local_post_office,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                elevation: 10.0,
                                borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: height * .48,
                child: Stack(
                  children: <Widget>[
                    ListInfinity()
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(width * .04),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blue.shade600,
                            width: .8,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: height,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: height * .11,
                          child: GoogleMap(
                            markers: Set<Marker>.of(markers.values),
                            mapType: MapType.normal,
                            onMapCreated: _onMapCreated,
                            myLocationButtonEnabled: true,
                            buildingsEnabled: true,
                            zoomControlsEnabled: false,
                            initialCameraPosition: CameraPosition(
                                target:
                                LatLng(_originLatitude, _originLongitude),
                                zoom: 15.0),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'چهار راه طالقانی',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 11.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget _buildTimeline() {
    return new Positioned(
      top: 0.0,
      bottom: 0.0,
      right: 32.0,
      child: new Container(
        width: 1.0,
        color: Colors.grey[300],
      ),
    );
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }
}

class ListInfinity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InfiniteList(
      builder: (BuildContext context , int index){
        return InfiniteListItem(
            headerBuilder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * .08),
                alignment: Alignment.center,
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade600,
                ),
              );
            },
            contentBuilder: (BuildContext context) {
              return Container(
                height: 100,
                width: 300,
                child: Text(
                  "Content $index",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              );
            },
            minOffsetProvider: (StickyState<int> state) => 50,
            crossAxisAlignment: HeaderCrossAxisAlignment.end,
            positionAxis: HeaderPositionAxis.mainAxis
        );
      },
    );
  }
}