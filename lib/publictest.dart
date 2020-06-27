import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard/ui/drawer.dart';

class Publictest extends StatefulWidget {
  @override
  _PublictestState createState() => _PublictestState();
}

class _PublictestState extends State<Publictest> {
  String _name;
  String _lastName;
  String _expertId;
  String _mobile;
  bool __isActive = false;
  bool __isOnJob;
  bool __isBanned;
  Map _expertData;
  double lat;
  double long;
  GlobalKey overlayKey;
  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: AppDrawer(),
          key: scaffoldKey,
          backgroundColor: Colors.teal,
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: Colors.white,
            title: Text('پنل کارشناس',
                style: TextStyle(
                    fontFamily: 'IRANSans',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0)),
          ),
          body: ListView (
            padding: const EdgeInsets.all(14.0),
            children: <Widget>[
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('کارهای درحال انجام',
                        style: TextStyle(
                            fontFamily: 'IRANSans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0)),
                  ),
                  onTap: () {}),
              new SizedBox(
                height: 5.0,
              ),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('کارهای جدید',
                        style: TextStyle(
                            fontFamily: 'IRANSans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0)),
                  ),
                  onTap: () {}),
              new SizedBox(
                height: 5.0,
              ),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('تمام شده ها ',
                        style: TextStyle(
                            fontFamily: 'IRANSans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0)),
                  ),
                  onTap: () {})
            ],
          ),
        ));
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
              print('Not set yet');
            },
            child: child));
  }

}