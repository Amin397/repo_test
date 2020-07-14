import 'package:flutter/material.dart';
import 'package:sanannegarexperts/alert_info/alert_insurence_info.dart';
import 'package:sanannegarexperts/alert_info/alert_user_info.dart';
import 'package:sanannegarexperts/dashboard/ui/custom_clip_path.dart';
import 'package:sanannegarexperts/model/request_model.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPart extends StatelessWidget {

  Request request;

  TopPart(Request reequest) {
    this.request = reequest;
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


    return Container(
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
                          (request.result.isFault) ? 'مقصر' : 'زیان دیده',
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
          Align(
            alignment: Alignment.center,
            child: Material(
                elevation: 5.0,
                shadowColor: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    height: (height * .27) * .55,
                    width: (height * .27) * .55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image
                                .asset('assets/images/avatar.png')
                                .image
                        )
                    ),
                  ),
                )
            ),
          ),
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
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              UserDialog(
                                title: "اطلاعات کاربر",
                                request: request,
                              ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'اطلاعات کاربر',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IRANSans'),
                        ),
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
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              InsurenceDialog(
                                title: "اطلاعات بیمه",
                                request: request,
                              ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'اطلاعات بیمه',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IRANSans'),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            bottom: height * .098,
            left: width * .25,
            child: (request.result.insurance.endError) ? Icon(
              Icons.info, color: Colors.amber, size: 20.0) : Container(),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: height * .013),
                child: Text(
                  '${request.result.customer.fname} ${request.result.customer
                      .lname}',
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
                      child: GestureDetector(
                        onTap: () {

                        },
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
    );
  }
}
