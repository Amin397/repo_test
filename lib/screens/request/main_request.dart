import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanannegarexperts/screens/widgets/car_tag_part.dart';
import 'package:sanannegarexperts/screens/widgets/end_part.dart';
import 'package:sanannegarexperts/screens/widgets/middle_part.dart';
import 'package:sanannegarexperts/screens/widgets/top_part.dart';

class MainRequest extends StatefulWidget {
  @override
  _MainRequestState createState() => _MainRequestState();
}

class _MainRequestState extends State<MainRequest> {

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TopPart(),
              MiddlePart(),
              CarTagPart(),
              Expanded(
                child: EndPart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
