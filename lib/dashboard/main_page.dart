import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:load/load.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:sanannegarexperts/dashboard/MessageNotification.dart';
import 'package:sanannegarexperts/dashboard/ui/drawer.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
import 'package:sanannegarexperts/login/ui/widgets/custom_switch.dart';
import 'package:sanannegarexperts/map/google_map.dart';
import 'package:sanannegarexperts/publictest.dart';
import 'package:sanannegarexperts/testinot.dart';

// ignore: must_be_immutable
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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

  Future<void> setData() async {
    var res = await makePostRequest('$API_ROOT/BaseInfo/Experts/Experts.php', {
      'expert_id': await getPref('expert_id'),
      'api_type': 'getFullInfo'
    });
    res = res.json();
    print(res);

    setState(() {
      _name =  res['data']['name'];
      _lastName =  res['data']['lname'];
      _expertId =  res['data']['expert_id'];
      _mobile =  res['data']['mobile'];
    __isActive =  res['isActive'];
    __isOnJob =  res['isOnJob'];
    __isBanned =  res['isBanned'];
    _expertData =  res['data'];
    });
  }

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
                onPressed: () => Navigator.of(context).pop(),
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

    setData().then((completed) {
      if (!__isBanned) {
        if (__isActive) {
          sendLocation();
          setState(() {
            bgColor = Colors.green;
          });
        } else if (__isOnJob) {
          bgColor = Colors.greenAccent;
        } else {
          setState(() {
            bgColor = Colors.redAccent;
          });

        }
      } else {
        showOverlayNotification((context) {
          return MessageNotification(
              OverlyKey: overlayKey,
              title: Text(
                'اکانت شما توسط مدیریت به حالت تعلیق در آمده است!',
                style: TextStyle(fontFamily: "IRANSans", color: Colors.white),
              ),
              subTitle: Text(
                '',
                style: TextStyle(fontFamily: "IRANSans", color: Colors.white),
              ),
              icon: Icon(
                Icons.check,
                color: Colors.white,
              ),
              color: Colors.red);
        }, duration: new Duration(days: 1));
      }
    });
    super.initState();
  }

  void onReply() async {
    showLoadingDialog();
    var position = await getLocation();
    if (long != position.longitude || lat != position.latitude) {
      long = position.longitude;
      lat = position.latitude;
    }
    var res = await makePostRequest('$API_ROOT/BaseInfo/Experts/Experts.php', {
      'lat': lat,
      'lang': long,
      'api_type': 'setActive',
      'expert_id': _expertId
    });
    res = res.json();
    if (res['result'] == 'success') {
      sendLocation();
      setState(() {
        bgColor = Colors.white;
      });
    } else if (res['result'] == 'exists') {
      sendLocation();
      setState(() {
        bgColor = Colors.white;
      });
    } else {
      showInSnackBar(
          context,
          'فعال سازی اکانت شما با خطا مواجه شد٬ لطفا دوباره تلاش کنید!',
          Colors.red,
          5,
          scaffoldKey);
    }
    hideLoadingDialog();
  }

  void sendLocation() {
    Timer.periodic(new Duration(seconds: 1), (timer) async {
      if (__isActive) {
        var position = await getLocation();
        print(position);
        if (long != position.longitude || lat != position.latitude) {
          long = position.longitude;
          lat = position.latitude;
          await makePostRequest('$API_ROOT/BaseInfo/Experts/Experts.php', {
            'lat': lat,
            'long': long,
            'api_type': 'updateLocation',
            'expert_id': _expertId,
          });
        }
      }
    });
  }

  Color bgColor;
  final List<List<double>> charts = [
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
    ]
  ];

  static final List<String> chartDropdownItems = [
    'هفت روز گذشته',
    'ماه گذشته',
    'سال گذشته'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: AppDrawer(),
            key: scaffoldKey,
            backgroundColor: bgColor,
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
            body: StaggeredGridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              children: <Widget>[
                activationWidget(),
                requestCount(),
                general(),
                notifs(),
                _buildTile(
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('نمودار عملکرد',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'IRANSans')),
                                  Text('۱۲۵',
                                      style: TextStyle(
                                          fontFamily: 'IRANSans',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0)),
                                ],
                              ),
                              DropdownButton(
                                  isDense: true,
                                  value: actualDropdown,
                                  onChanged: (String value) => setState(() {
                                        actualDropdown = value;
                                        actualChart =
                                            chartDropdownItems.indexOf(
                                                value); // Refresh the chart
                                      }),
                                  items: chartDropdownItems.map((String title) {
                                    return DropdownMenuItem(
                                      value: title,
                                      child: Text(title,
                                          style: TextStyle(
                                              fontFamily: 'IRANSans',
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0)),
                                    );
                                  }).toList())
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 4.0)),
                          Sparkline(
                            data: charts[actualChart],
                            lineWidth: 5.0,
                            lineColor: Colors.greenAccent,
                          )
                        ],
                      )),
                ),
                _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('مشتری خصوصی',
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontFamily: 'IRANSans',
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold)),
                              Text('170',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10.0))
                            ],
                          ),
                          Material(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(24.0),
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.store,
                                    color: Colors.white, size: 30.0),
                              )))
                        ]),
                  ),
//              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
                )
              ],
              staggeredTiles: [
                StaggeredTile.extent(2, 110.0),
                StaggeredTile.extent(2, 110.0),
                StaggeredTile.extent(1, 180.0),
                StaggeredTile.extent(1, 180.0),
                StaggeredTile.extent(2, 220.0),
                StaggeredTile.extent(2, 110.0),
              ],
            )));
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GMap()));
                  },
            child: child));
  }

  Widget requestCount() {
    return _buildTile(
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('تعداد درخواست ها',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12.0,
                            fontFamily: 'IRANSans')),
                    Text('۲۶۵ درخواست',
                        style: TextStyle(
                            fontFamily: 'IRANSans',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0))
                  ],
                )),
                Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(24.0),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:
                          Icon(Icons.timeline, color: Colors.white, size: 30.0),
                    )))
              ]),
        ),
        onTap: () {});
  }

  Widget activationWidget() {
    return _buildTile(
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'فعال سازی شیفت',
                      style: TextStyle(
                          fontFamily: 'IRANSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        value: __isActive,
                        onChanged: (value) {
                          print(value);
                          if (value) {
                            makePostRequest(EXPERTS, {
                              'api_type': 'setActive',
                              'expert_id': _expertId,
                              'lat': '33.21542',
                              'lang': '54.21548',
                              'token': '199d2addf2da5116b1accafcf4685f128df2ca69'
                            }).then((res) {
                              print(res.content());
                              Map data = res.json();
                              if (data['result'] == 'success_1' ||
                                  data['result'] == 'exists') {
                                setState(() {
                                  __isActive = !__isActive;
                                });
                              }
                            });
                          } else {
                            makePostRequest(EXPERTS, {
                              'api_type': 'deactive',
                              'expert_id': _expertId,
                              'token': '199d2addf2da5116b1accafcf4685f128df2ca69'
                            }).then((res) {
                              print(res.content());
                              Map data = res.json();
                              if (data['result'] == 'success') {
                                setState(() {
                                  __isActive = !__isActive;
                                });
                              }
                            });
                          }
                        },
                        activeColor: Colors.green,
                      ),
                    )
                  ],
                ),
              ]),
        ),
        onTap: () {});
  }

  Widget general() {
    return _buildTile(
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Material(
                  color: Colors.teal,
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.settings_applications,
                        color: Colors.white, size: 30.0),
                  )),
              Padding(padding: EdgeInsets.only(bottom: 16.0)),
              Text('کارتابل',
                  style: TextStyle(
                      fontFamily: 'IRANSans',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0)),
            ]),
      ),
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Publictest()));
        }
    );
  }

  Widget notifs() {
    return _buildTile(
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Material(
                  color: Colors.amber,
                  shape: CircleBorder(),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        new Stack(children: <Widget>[
                          new Positioned(
                            top: 0.0,
                            left: 0.0,
                            child: new Icon(Icons.brightness_1,
                                size: 8.0, color: Colors.redAccent),
                          ),
                          new Stack(
                            children: <Widget>[
                              new Icon(Icons.notifications,
                                  color: Colors.white, size: 30.0),
                            ],
                          )
                        ]),
                      ],
                    ),
                  )),
              Padding(padding: EdgeInsets.only(bottom: 16.0)),
              Text('اعلان ها',
                  style: TextStyle(
                      fontFamily: 'IRANSans',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0)),
            ]),
      ),
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Testinot()));
        }
    );
  }
}
