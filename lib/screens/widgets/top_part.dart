import 'package:flutter/material.dart';
import 'package:sanannegarexperts/dashboard/ui/custom_clip_path.dart';

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .27,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: ClipPath(
                child: Container(
                  height: MediaQuery.of(context).size.height * .22,
                  width: MediaQuery.of(context).size.width,
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
                  height: MediaQuery.of(context).size.height * .12,
                  width: MediaQuery.of(context).size.width * .7,
                  color: Colors.blue.shade600,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .005),
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
            left: MediaQuery.of(context).size.width * .38,
            top: MediaQuery.of(context).size.height * .065,
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
            top: MediaQuery.of(context).size.height * .16,
            right: 0.0,
            left: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .25,
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
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .25,
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
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .013),
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
                    horizontal: MediaQuery.of(context).size.width * .1, vertical: MediaQuery.of(context).size.height * .03),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .05,
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
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .05,
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
    );
  }
}
