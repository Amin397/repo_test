import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';

import 'dashboard/ui/drawer.dart';

class Testinot extends StatefulWidget {
  @override
  _TestinotState createState() => _TestinotState();
}

class _TestinotState extends State<Testinot> {
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

  final Firestore _db = Firestore.instance;
  final FirebaseMessaging _fcm = FirebaseMessaging();


  @override
  void initState() {
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
//                  makePostRequest(API_V1,
//                  'target': 'accept',
//
//                  );
                  Navigator.of(context).pop();
                }
              ),
            ],
          ),
        );
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        // TODO optional
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        // TODO optional
      },
    );

  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: AppDrawer(),
            key: scaffoldKey,
            backgroundColor: Colors.amber,
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
             child: Text('درخواست شما درحال پیگیری است',
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
                      child: Text('دیدن وضعیت جدید بیمه ها',
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
                      child: Text('برای تکمیل مدارک مورد نیاز به مرکز مراجعه نمایید ',
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