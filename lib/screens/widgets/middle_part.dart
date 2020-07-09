import 'package:flutter/material.dart';
import 'dart:math'as math;

import 'package:sanannegarexperts/model/request_model.dart';

class MiddlePart extends StatelessWidget {

  Request request;
  MiddlePart(Request reequest){
    this.request = reequest;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .4,
      width: width,
      child: Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          Positioned(
            top: 0.0,
            bottom: 0.0,
            right: -(width * .35) * .4,
            child: Transform.rotate(
                angle: math.pi ,
              child: Container(
                width: width * .35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/car2.png')
                    )
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
