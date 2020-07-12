import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {

  String ostan;
  String city;
  String sherkate_bime_motaghazi;
  String namayandegi;
  String brand_mashin;
  String carbary_mashin;
  String model_mashin;
  String shobe_bimeGozar;
  String year;
  String noee_bime_mashin;
  String khatarate_pishnehadi;
  PageController _pageController;

  Page1(
      String ostan,
      String city,
      String sherkate_bime_motaghazi,
      String namayandegi,
      String brand_mashin,
      String carbary_mashin,
      String model_mashin,
      String shobe_bimeGozar,
      String year,
      String noee_bime_mashin,
      String khatarate_pishnehadi,
      PageController pageController
      ){
   this.ostan = ostan;
   this.city = city;
   this.sherkate_bime_motaghazi = sherkate_bime_motaghazi;
   this.namayandegi = namayandegi;
   this.brand_mashin = brand_mashin;
   this.carbary_mashin = carbary_mashin;
   this.model_mashin = model_mashin;
   this.shobe_bimeGozar = shobe_bimeGozar;
   this.year = year;
   this.noee_bime_mashin = noee_bime_mashin;
   this.khatarate_pishnehadi = khatarate_pishnehadi;
   this._pageController = pageController;
  }

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height * .75) * .88,
                  child: ListView(
                    children: <Widget>[
                      DropdownButton<String>(
                        value: widget.ostan,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.ostan = newValue;
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
                      DropdownButton<String>(
                        value: widget.city,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.city = newValue;
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
                      DropdownButton<String>(
                        value: widget.namayandegi,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.namayandegi = newValue;
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
                      DropdownButton<String>(
                        value: widget.sherkate_bime_motaghazi,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.sherkate_bime_motaghazi = newValue;
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
                      DropdownButton<String>(
                        value: widget.khatarate_pishnehadi,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.khatarate_pishnehadi = newValue;
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
                      DropdownButton<String>(
                        value: widget.carbary_mashin,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.carbary_mashin = newValue;
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
                      DropdownButton<String>(
                        value: widget.brand_mashin,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.brand_mashin = newValue;
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
                      DropdownButton<String>(
                        value: widget.model_mashin,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.model_mashin = newValue;
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
                      DropdownButton<String>(
                        value: widget.shobe_bimeGozar,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.shobe_bimeGozar = newValue;
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
                      DropdownButton<String>(
                        value: widget.year,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.year = newValue;
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
                      DropdownButton<String>(
                        value: widget.noee_bime_mashin,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            widget.noee_bime_mashin = newValue;
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
                      color: Colors.red,
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
