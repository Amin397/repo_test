import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:load/load.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
import 'file:///G:/saman_negar_experts/lib/screens/request/main_request.dart';
import 'package:sanannegarexperts/model/request_model.dart';

class RequestUi {
  final BuildContext context;
  final ScrollController scrollController;

  RequestUi({this.context, this.scrollController});

  Widget requestUI(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Request amin = Request();

    var beforeAcceptHeight = MediaQuery.of(context).size.height * .065;
    var accepted = false;

    return Container(
      height: height * .75,
      width: width * .9,
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  accepted = !accepted;
                  showLoadingDialog();
//                  reqHandler();
//                  hideLoadingDialog();
                  makePostRequest(API_V1, {
                    'target': 'accept',
                    'expert_id': 40,
                    'request_id': 990101
                  }).then((res)async {
                    if (res['ok']) {
                      amin = Request.fromJson(res);
//                      await setPref('userLat', res['result']['lat']);
//                      await setPref('userLon', res['result']['lon']);
//                      await setPref('isFault', res['result']['isFault'].toString());
//                      await setPref('isDamaged', res['result']['isDamaged'].toString());
//                      await setPref('address', res['result']['address']);
//
//                      print(getPref('address').toString());
                      hideLoadingDialog();
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
                child: Container(
                    height: (!accepted) ? beforeAcceptHeight : height,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0))),
                    child: Center(
                      child: Text(
                        "Accept",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width,
              height: height * .2,
              decoration: BoxDecoration(color: Colors.red),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: width * .08, top: width * .02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '29 سال',
                              style: TextStyle(
                                  fontFamily: 'IRANsans',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(.8)),
                            ),
                            Text(
                              'حسن قلی خانی',
                              style: TextStyle(
                                  fontFamily: 'IRANsans',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(.8)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

//  Future<Request> reqHandler()async{
//    final http.Response response = await http.post(API_V1 ,
//        body:jsonEncode(<String , dynamic>{
//          'target': 'accept',
//          'expert_id': 40,
//          'request_id': 990101
//        }));
//
//    print(response.body);
////    if(response.statusCode == 200){
////      return Request.fromJson(json.decode(response.body));
////    }else{
////      throw Exception('amin');
////    }
//  }
}
