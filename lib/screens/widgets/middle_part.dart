import 'package:flutter/material.dart';
import 'car_tag.dart';

class MiddlePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(

      ),
    );
  }
}
