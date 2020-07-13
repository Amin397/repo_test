import 'package:flutter/material.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/classes/file_class.dart';

class Page1 extends StatefulWidget {

  Strings strings;
  PageController _pageController;

  Page1(Strings strings , PageController _pageController){
    this.strings = strings;
    this._pageController = _pageController;
  }

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(.6),
          resizeToAvoidBottomInset: false,
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height * .75) * .88,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * .01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                child: Container(
                                    width: width * .3,
                                    child: Center(
                                      child:DropdownButton<String>(
                                        value: widget.strings.ostan,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: TextStyle(color: Colors.deepPurple),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            widget.strings.ostan = newValue;
                                          });
                                        },
                                        items: <String>[
                                          'تهران',
                                          'شهریار',
                                          'اسلامشهر',
                                          'شهر قدس'
                                        ].map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Material(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  elevation: 5.0,
                                  child: Container(
                                    width: width * .3,
                                    child: Center(
                                      child: DropdownButton<String>(
                                        value: widget.strings.city,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: TextStyle(color: Colors.deepPurple),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            widget.strings.city = newValue;
                                          });
                                        },
                                        items: <String>['تهران', 'اصفهان', 'شیراز', 'قم']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * .01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                child: Container(
                                  width: width * .3,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: widget.strings.sherkate_bime_motaghazi,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 20,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          widget.strings.sherkate_bime_motaghazi = newValue;
                                        });
                                      },
                                      items: <String>['ایران', 'دی', 'پارسیان', 'سینا']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                child: Container(
                                  width: width * .3,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: widget.strings.namayandegi,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          widget.strings.namayandegi = newValue;
                                        });
                                      },
                                      items: <String>[
                                        'نمایندگی تهران',
                                        'نمایندگی اصفهان',
                                        'نمایندگی شیراز',
                                        'نمایندگی قم'
                                      ].map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0 , right: 15.0 , bottom: 10.0),
                        child: Material(
                          elevation: 5.0 ,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            child: Center(
                              child: DropdownButton<String>(
                                value: widget.strings.shobe_bimeGozar,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    widget.strings.shobe_bimeGozar = newValue;
                                  });
                                },
                                items: <String>[
                                  'شعبه کرج',
                                  'شعبه تهران',
                                  'شعبه شیراز',
                                  'شعبه قم'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:15.0 , right: 15.0 , bottom: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            child: Center(
                              child: DropdownButton<String>(
                                value: widget.strings.khatarate_pishnehadi,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    widget.strings.khatarate_pishnehadi = newValue;
                                  });
                                },
                                items: <String>[
                                  'آتش سوزی',
                                  'سرقت کلی',
                                  'اسید پاشی',
                                  'سرقت درجا'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0 , right: 15.0 , top: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            width: width * .22,
                            child: Center(
                              child: DropdownButton<String>(
                                value: widget.strings.brand_mashin,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    widget.strings.brand_mashin = newValue;
                                  });
                                },
                                items: <String>[
                                  'پژو',
                                  'پراید',
                                  'سمند',
                                  'وانت',
                                  "پرادو",
                                  'آلفا',
                                  'ایکس',
                                  'اینفینیتی',
                                  'ام جی',
                                  'بنز',
                                  'بی وای دی'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * .01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                child: Container(
                                  width: width * .3,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: widget.strings.model_mashin,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          widget.strings.model_mashin = newValue;
                                        });
                                      },
                                      items: <String>['111', 'تیبا', 'هاچ بک', 'ساینا']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                child: Container(
                                  width: width * 0.3,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: widget.strings.carbary_mashin,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          widget.strings.carbary_mashin = newValue;
                                        });
                                      },
                                      items: <String>[
                                        'یخچال دار',
                                        'سواری',
                                        'باری',
                                        'وانت',
                                        "شخصی",
                                        'غمومی',
                                      ].map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0 , right: 15.0 , bottom: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            child: Center(
                              child: DropdownButton<String>(
                                value: widget.strings.noee_bime_mashin,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    widget.strings.noee_bime_mashin = newValue;
                                  });
                                },
                                items: <String>['بدنه', 'ثالث']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:15.0 , right: 15.0 , bottom: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            child: Center(
                              child: DropdownButton<String>(
                                value: widget.strings.year,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    widget.strings.year = newValue;
                                  });
                                },
                                items: <String>['شمسی', 'میلادی']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (widget._pageController.hasClients) {
                        widget._pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Container(
                      height: 40.0,
                      color: Colors.blue.withOpacity(.8),
                      child: Center(
                        child: Text(
                          'مرحله بعد',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
