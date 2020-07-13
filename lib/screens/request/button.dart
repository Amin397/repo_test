import 'package:flutter/material.dart';
import 'package:load/load.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
import 'package:sanannegarexperts/model/request_model.dart';

import 'main_request.dart';

class BuildContainer extends StatefulWidget {
  @override
  _BuildContainerState createState() => _BuildContainerState();
}

class _BuildContainerState extends State<BuildContainer> with TickerProviderStateMixin{

  Request amin = Request();

  String _buttonText = 'BUY TICKET';

  AnimationController _controller;
  Animation _roundnessAnimation;
  Animation _widthAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 25,
      ),
    )..addListener(() {
      setState(() {});
    });

    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pop();
      }
    });
    _controller.forward();

//    _roundnessAnimation = Tween(begin: 10.0, end: 30.0).animate(CurvedAnimation(
//      parent: _controller,
//      curve: Curves.linear,
//    ));

  }

  @override
  Widget build(BuildContext context) {

    _widthAnimation = Tween( begin: MediaQuery.of(context).size.width, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    return Container(
//      borderRadius: BorderRadius.circular(_roundnessAnimation.value),
      child: GestureDetector(
        onTap: (){
          showLoadingDialog();
          _controller.dispose();
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
        child: Container(
          height: 40.0,
          width: _widthAnimation.value,
          decoration: BoxDecoration(
              color: Colors.red.shade800.withOpacity(.6),
//              borderRadius: BorderRadius.circular(_roundnessAnimation.value)
          ),
        ),
      ),
    );
  }
}
