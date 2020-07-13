import 'package:flutter/material.dart';
import 'package:sanannegarexperts/model/request_model.dart';
import 'package:sanannegarexperts/screens/widgets/car_tag.dart';

class CarTagPart extends StatelessWidget {

  Request request;
  CarTagPart(Request reequest){
    this.request = reequest;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ((MediaQuery.of(context).size.height * .48) * .18),
      child: Center(
        child: Hero(
          tag: "carTag",
          child: CarTag(),
        ),
      ),
    );
  }
}
