import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pop();
    });
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.4),
      body: Hero(
        tag: "background-color",
        child: Container(
          color: Colors.white,
          child: Center(
            child: Lottie.asset('assets/anim/success.json',
                controller: _animationController,
                height: 400.0,
                width: 300.0, onLoaded: (composition) {
              _animationController
                ..duration = composition.duration
                ..forward();
            }),
          ),
        ),
      ),
    );
  }
}
