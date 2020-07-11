import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sanannegarexperts/model/request_model.dart';

class MiddlePart extends StatelessWidget {
  Request request;

  MiddlePart(Request reequest) {
    this.request = reequest;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var listWidth = width - ((width * .35) * .6);
    var listHeight = height * .4;

    return Container(
      height: height * .4,
      width: width,
      child: Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: -(width * .35) * .4,
            child: Transform.rotate(
              angle: math.pi,
              child: Container(
                width: width * .35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/car2.png'))),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                width: listWidth,
                child: Center(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      listInfoCard('نام ماشین', request.result.car.name,
                          listHeight, listWidth),
                      listInfoCard(
                          'سال ساخت',
                          request.result.car.productionDate,
                          listHeight,
                          listWidth),
                      listInfoCard('برند ماشین', request.result.car.brand,
                          listHeight, listWidth),
                      listInfoCard('رنگ ماشین', request.result.car.color,
                          listHeight, listWidth)
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget listInfoCard(String title, var subTitle, var height, var width) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange.withAlpha(120),
              Colors.red.withAlpha(100),
            ]),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          height: height * .2,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  height: (height * .2) * .6,
                  width: width * .11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/car_ring.png'))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
