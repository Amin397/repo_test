import 'package:flutter/material.dart';
import 'package:sanannegarexperts/model/request_model.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;
  Request request;

  CustomDialog({
    @required this.title,
    @required this.request,
    @required this.description,
    @required this.buttonText,
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
                      fontFamily: 'IRANSans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
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
                                Icons.recent_actors,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'کد ملی: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.customer.nationalCode,
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
                                Icons.person,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'نام پدر: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.customer.fatherName,
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
                                Icons.featured_play_list,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'شماره شناسنامه: ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.customer.numberId,
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
                                Icons.location_on,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'صادره از: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.customer.placeOfIssue,
                                style: TextStyle(
                                  fontSize: 16.0,
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
                                Icons.date_range,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: width * .04,
                              ),
                              Text(
                                'تاریخ تولد: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    color: Colors.white,
                                    fontSize: 16.0),
                              ),
                              Text(
                                request.result.customer.birth_date,
                                style: TextStyle(
                                  fontFamily: 'IRANSans',
                                ),
                              ),
                            ],
                          ),
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
                            fit: BoxFit.cover,
                            image: Image.asset('assets/images/avatar.png')
                                .image)),
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
