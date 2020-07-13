import 'package:flutter/material.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/classes/file_class.dart';

class Page2 extends StatefulWidget {

  TextController tController;
  PageController _pageController;

  Page2(TextController tController , PageController _pageController){
    this.tController = tController;
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
                              controller: widget.tController.arzesh,
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

//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.sal_sakht,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'سال ساخت'),
//                            ),
//                          ),
//
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.saate_erja_markazi,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'ساعت ارجاع ستاد مرکزی'),
//                            ),
//                          ),
//
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.address,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'آدرس'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.limit_time,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'حداکثر زمان بازدید مجاز'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.zarfiat,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'ظرفیت'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.saate_hamahangi,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'ساعت هماهنگی بازدید با مالک'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.pelak,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'پلاک'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.shasi,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'شاسی'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.tozihat,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'توضیحات'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.motor,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'موتور'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.range,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'رنگ'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.bimegozar_name,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'نام بیمه گذار'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.tarikh_bazdid,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'تاریخ بازدید'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.saate_bazdid,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'ساعت بادزید'),
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                            ),
//                            margin: EdgeInsets.only(left: width * .1 , right: width * .1 , bottom: height * .02),
//                            height: height * .06,
//                            child: TextFormField(
//                              textAlign: TextAlign.center,
//                              controller: widget.elateadam,
//                              decoration: InputDecoration(
//                                  hintStyle: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 14.0,
//                                  ),
//                                  hintMaxLines: 1,
//                                  border: InputBorder.none,
//                                  hintText: 'علت عدم بازدید'),
//                            ),
//                          ),
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
                      color: Colors.brown.withOpacity(.7),
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
