import 'package:flutter/material.dart';
import 'package:load/load.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
import 'package:sanannegarexperts/model/request_model.dart';
import 'package:sanannegarexperts/screens/request/button.dart';
import 'package:sanannegarexperts/screens/request/main_request.dart';

class modal_bottom_sheet extends StatelessWidget {

  Request amin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      child: Center(
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.only(top: 10.0 , right: 10.0),
                width: MediaQuery.of(context).size.width * .7,
                height: (MediaQuery.of(context).size.height * .4) * .85,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'تیبا'
                          ),
                          Text(
                              ': ماشین مقصر'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'تویوتا'
                          ),
                          Text(
                              ': ماشین زیان دیده'
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('تهران ، میدان انقلاب اسلامی'),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 120.0,
                        child: Lottie.asset('assets/anim/flutter_location.json'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                  height: 100.0,
                  child: Lottie.asset('assets/anim/flutter_alert.json'),
                ),

            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      showLoadingDialog();
//                                  _controller.dispose();
                      makePostRequest(API_V1, {
                        'target': 'accept',
                        'expert_id': 40,
                        'request_id': 990101
                      }).then((res)async {
                        if (res['ok']) {
                          amin = Request.fromJson(res);
                          hideLoadingDialog();
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.upToDown,
                                  child: MainRequest(amin)));

                        } else {
                          print('amin');
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              border: Border.all(color: Colors.black54 , width: 1.0)
                          ),
                          child: Center(
                            child: Text(
                              'قبول درخواست',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: BuildContainer(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
