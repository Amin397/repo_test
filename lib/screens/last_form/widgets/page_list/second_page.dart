import 'package:beauty_textfield/beauty_textfield.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {

  TextEditingController arzesh;
  TextEditingController address;
  TextEditingController zarfiat;
  TextEditingController pelak;
  TextEditingController shasi;
  TextEditingController elateadam;
  TextEditingController tozihat;
  TextEditingController motor;
  TextEditingController range;
  TextEditingController bimegozar_name;
  TextEditingController tarikh_bazdid;
  TextEditingController saate_bazdid;
  TextEditingController sal_sakht;
  TextEditingController saate_erja_markazi;
  TextEditingController limit_time;
  TextEditingController saate_hamahangi;

  PageController _pageController;

  Page2(
      TextEditingController arzesh,
      TextEditingController address,
      TextEditingController zarfiat,
      TextEditingController pelak,
      TextEditingController shasi,
      TextEditingController elateadam,
      TextEditingController tozihat,
      TextEditingController motor,
      TextEditingController range,
      TextEditingController bimegozar_name,
      TextEditingController tarikh_bazdid,
      TextEditingController saate_bazdid,
      TextEditingController sal_sakht,
      TextEditingController saate_erja_markazi,
      TextEditingController limit_time,
      TextEditingController saate_hamahangi,
      PageController _pageController){

    this.arzesh = arzesh;
    this.address = address;
    this.zarfiat = zarfiat;
    this.pelak = pelak;
    this.shasi = shasi;
    this.elateadam = elateadam;
    this.tozihat = tozihat;
    this.motor = motor;
    this.range = range;
    this.bimegozar_name = bimegozar_name;
    this.tarikh_bazdid = tarikh_bazdid;
    this.saate_bazdid = saate_bazdid;
    this.sal_sakht = sal_sakht;
    this.saate_erja_markazi = saate_erja_markazi;
    this.limit_time = limit_time;
    this.saate_hamahangi = saate_hamahangi;
    this._pageController = _pageController;

  }

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

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
                  height: (height * .75) * .88,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.arzesh,
                              decoration: InputDecoration(
                                  hintText: 'ارزش روز خودرو',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                                hintMaxLines: 1,
                                border: InputBorder.none
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.sal_sakht,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'سال ساخت'),
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.saate_erja_markazi,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'ساعت ارجاع ستاد مرکزی'),
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.address,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'آدرس'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.limit_time,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'حداکثر زمان بازدید مجاز'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.zarfiat,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'ظرفیت'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.saate_hamahangi,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'ساعت هماهنگی بازدید با مالک'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.pelak,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'پلاک'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.shasi,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'شاسی'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.tozihat,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'توضیحات'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.motor,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'موتور'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.range,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'رنگ'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.bimegozar_name,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'نام بیمه گذار'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.tarikh_bazdid,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'تاریخ بازدید'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.saate_bazdid,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'ساعت بادزید'),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
                            height: height * .06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.elateadam,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  hintText: 'علت عدم بازدید'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (widget._pageController.hasClients) {
                        widget. _pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Container(
                      color: Colors.green.withOpacity(.7),
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
