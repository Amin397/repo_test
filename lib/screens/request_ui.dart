import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';

class RequestUi{

  final BuildContext context;
  RequestUi({this.context});

  Widget requestUI(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  makePostRequest(API_V1,
                  {
                    'target':'accept',
                    'expert_id': 40,
                    'request_id':990101
                  }).then((res) => print(res));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .5,
                  margin: EdgeInsets.symmetric(horizontal: 16.0 , vertical: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  child: Center(
                    child: Text(
                      "Accept",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0
                      ),
                    ),
                  )
                ),
              )
          )
        ],
      ),
    );
  }
}