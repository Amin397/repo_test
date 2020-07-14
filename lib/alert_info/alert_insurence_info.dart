import 'package:flutter/material.dart';
import 'package:sanannegarexperts/model/request_model.dart';

class InsurenceDialog extends StatelessWidget {
  final String title;
  final Image image;
  Request request;

  InsurenceDialog({
    @required this.title,
    @required this.request,
    @optionalTypeArgs this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 100.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(
                top: height * .03,
                bottom: 10.0,
                left: Consts.padding,
                right: Consts.padding,
              ),
              margin: EdgeInsets.only(top: 10.0),
              decoration: new BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(Consts.padding),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, -10.0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // To make the card compact
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'IRANSans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: height * .04),
                  Container(
                    height: 250.0,
                    width: width,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.account_balance,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'شرکت بیمه: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.insurance.company,
                                style: TextStyle(
                                  fontFamily: 'IRANSans',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.assistant_photo,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'شعبه: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.insurance.branch,
                                style: TextStyle(
                                  fontFamily: 'IRANSans',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.timer,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'تاریخ شروع: ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.insurance.start,
                                style: TextStyle(
                                  fontFamily: 'IRANSans',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.timer_off,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'تاریخ اتمام: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.insurance.end,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'IRANSans',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          (request.result.insurance.endError)
                              ? Text(
                                  'تاریخ اتمام بیمه نامه نزدیک است',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * .045),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .04,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 0.0,
              bottom: height * .172,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red.withOpacity(.7),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 0.0,
            top: height * .12,
            child: Material(
                elevation: 5.0,
                shadowColor: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    height: (height * .27) * .7,
                    width: (height * .27) * .7,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/asia.png',
                            ).image)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
}
