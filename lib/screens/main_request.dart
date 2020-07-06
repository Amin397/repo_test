import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sanannegarexperts/dashboard/ui/custom_clip_path.dart';

class MainRequest extends StatefulWidget {
  @override
  _MainRequestState createState() => _MainRequestState();
}

class _MainRequestState extends State<MainRequest> {

  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
                                  border: Border.all(color: Colors.black54),
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
                                border: Border.all(color: Colors.black54),
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
                    _buildTimeLine(height, width)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .02),
                  child: Container(
                    height: height,
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: Stack(
                      children: <Widget>[

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

  Widget _buildTimeLine(var height, var width) {
    return Positioned(
      top: 0.0,
      bottom: 0.0,
      right: width * .08,
      child: Container(
        width: 1.0,
        color: Colors.grey,
      ),
    );
  }
}
