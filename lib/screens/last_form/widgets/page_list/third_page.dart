import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Page3 extends StatefulWidget {

  File image_koli;
  File image_jolo_pelak;
  File image_jolo_rast_pelak;
  File image_jolo_chap_pelak;
  File image_aghab_pelak;
  File image_aghab_rast_pelak;
  File image_aghab_chap_pelak;
  File image_shasi_number;
  File image_motor_number;
  File image_ayene_kamel;
  File image_lavazem_janebi_fabrik;
  File image_gheyre_fabrik_otagh;
  File image_zapas;
  File image_ring_lastic;
  File image_kilometr_airbag;
  File image_options;
  File image_shishe;
  File image_cart;
  File image_khesarat;

  PageController _pageController;


  Page3(
      this.image_koli,
      this.image_jolo_pelak,
      this.image_jolo_rast_pelak,
      this.image_jolo_chap_pelak,
      this.image_aghab_pelak,
      this.image_aghab_rast_pelak,
      this.image_aghab_chap_pelak,
      this.image_shasi_number,
      this.image_motor_number,
      this.image_ayene_kamel,
      this.image_lavazem_janebi_fabrik,
      this.image_gheyre_fabrik_otagh,
      this.image_zapas,
      this.image_ring_lastic,
      this.image_kilometr_airbag,
      this.image_options,
      this.image_shishe,
      this.image_cart,
      this.image_khesarat,
      this._pageController);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {

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
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text(
                                'تصویر کلی',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_koli);
                              },
                              child: Text(
                                'گرفتن عکس',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس جلو با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_jolo_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس جلو و راست با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_jolo_rast_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس جلو و چپ با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_jolo_chap_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عقب کامل با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_aghab_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عقب وراست با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_aghab_rast_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عقب چپ با پلاک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_aghab_chap_pelak);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس شماره شاسی حک شده',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_shasi_number);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس شماره موتور حک شده',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_motor_number);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس آینه ها کامل',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_ayene_kamel);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('تصاویر لوازم جانبی فابریک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_lavazem_janebi_fabrik);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text(
                                  'تصاویر لوازم غیر فابریک داخل اتاق',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_gheyre_fabrik_otagh);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس زاپاس',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_zapas);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس رینگ و لاستیک',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_ring_lastic);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('عکس صفحه کیلومتر با ایربگ روشن',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_kilometr_airbag);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('تصاویر اپشن ها',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_options);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('تصاویر شیشه ها',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_shishe);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('تصاویر کارت خودرو',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_cart);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            child: Center(
                              child: Text('تصاویر خسارات فعلی',
                                  style: TextStyle(fontSize: 10.0)),
                            ),
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.red,
                            child: GestureDetector(
                              onTap: () {
                                _openCamera(context , widget.image_khesarat);
                              },
                              child: Text('گرفتن عکس'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (widget._pageController.hasClients) {
                        widget._pageController.animateToPage(
                          3,
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

  _openCamera(BuildContext context , File image_file) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      image_file = picture;
    });
  }
}
