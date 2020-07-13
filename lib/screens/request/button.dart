import 'package:flutter/material.dart';

class BuildContainer extends StatefulWidget {
  @override
  _BuildContainerState createState() => _BuildContainerState();
}

class _BuildContainerState extends State<BuildContainer> with TickerProviderStateMixin{

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
        seconds: 10,
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

    _roundnessAnimation = Tween(begin: 10.0, end: 30.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _widthAnimation = Tween(begin: 350, end: 30.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(_roundnessAnimation.value),
      child: Container(
        height: 30.0,
        width: _widthAnimation.value,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(_roundnessAnimation.value)
        ),
        child: Center(
          child: Text('قبول درخواست'),
        ),
      ),
    );
  }
}

//showLoadingDialog();
//makePostRequest(API_V1, {
//'target': 'accept',
//'expert_id': 40,
//'request_id': 990101
//}).then((res)async {
//if (res['ok']) {
//amin = Request.fromJson(res);
//hideLoadingDialog();
//Navigator.pop(context);
//Navigator.push(
//context,
//PageTransition(
//type: PageTransitionType.upToDown,
//child: MainRequest(amin)));
//
//} else {
//print('amin');
//}
//});
