import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class ConfigurationParts extends StatefulWidget {
  String image_path;
  String part_name;
  String db_price;

  ConfigurationParts(this.image_path, this.part_name, this.db_price);

  @override
  _ConfigurationPartsState createState() => _ConfigurationPartsState();
}

class _ConfigurationPartsState extends State<ConfigurationParts> {

  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var expandedHeight = height - (height * .4);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: height * .4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(widget.image_path).image)),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(right: width * .05, top: width * .02 , left: width * .05),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                            spreadRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.part_name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('قیمت ثبت شده ستاد: '),
                              SizedBox(width: 10.0,),
                              Text(widget.db_price , style: TextStyle(
                                  fontSize: 18.0
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: expandedHeight * .08,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                  width: width * .4,
                                  height: expandedHeight * .1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(6.0))
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'قیمت کارشناسی',
                                          hintStyle: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey
                                          ),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                          SizedBox(
                            height: expandedHeight * .08,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                  width: width * .4,
                                  height: expandedHeight * .1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(6.0))
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'داغی قطعه',
                                          hintStyle: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey
                                          ),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                  width: width * .4,
                                  height: expandedHeight * .1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(6.0))
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'اصطلاک قطعه',
                                          hintStyle: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey
                                          ),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                          SizedBox(
                            height: expandedHeight * .08,
                          ),
                          Container(
                            height: expandedHeight * .2,
                            color: Colors.red,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: const Text('Lafayette'),
                                      leading: Radio(
                                        value: SingingCharacter.lafayette,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter value) {
                                          setState(() {
                                            _character = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text('Thomas Jefferson'),
                                      leading: Radio(
                                        value: SingingCharacter.jefferson,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter value) {
                                          setState(() {
                                            _character = value;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),

                                Container(
                                    padding: EdgeInsets.only(right: 10.0),
                                    width: width * .4,
                                    height: expandedHeight * .1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(6.0))
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'اجرت ',
                                            hintStyle: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey
                                            ),
                                            border: InputBorder.none
                                        ),
                                      ),
                                    )
                                ),

                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              ListTile(
                                title: const Text('Lafayette'),
                                leading: Radio(
                                  value: SingingCharacter.lafayette,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('Thomas Jefferson'),
                                leading: Radio(
                                  value: SingingCharacter.jefferson,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
