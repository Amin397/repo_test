import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: (height * .48) * .15,
      width: width * .565,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: Colors.black, width: 1.5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.0),
                    bottomRight: Radius.circular(3.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: (height * .075) * .5 ,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'ا یــران',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '11',
                    style: TextStyle(color: Colors.black,height: 1, fontSize: 25.0 , fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 1.5,
            color: Colors.black,
          ),
          Container(
            width: (width * .6) * .6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .01),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        '386',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                          height: 1.8,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'ب',
                        style: TextStyle(
                            fontSize: 35.0,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(

                    child: Center(
                      child: Text(
                        '24',
                        style: TextStyle(
                            fontSize: 30.0,
                            height: 1.8,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: (width * .6) * .13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.0),
                      bottomLeft: Radius.circular(3.0)),
                  color: Colors.blue.shade800),
              child: Padding(
                padding: EdgeInsets.only(top: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .02,
                      width: MediaQuery.of(context).size.width * .065,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/iran_flag.png'))),
                    ),
                    Text(
                      'I.R.\nIRAN',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12.0, height: 1),
                      textDirection: TextDirection.ltr,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
