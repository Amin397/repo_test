import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/classes/file_class.dart';

class Page3 extends StatefulWidget {

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  Filess filess = Filess();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Center(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),
                  height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_koli == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس کامل' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_koli),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_jolo_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera2(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس کامل جلو با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_jolo_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_jolo_rast_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera3(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس جلو و راست با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_jolo_rast_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_jolo_chap_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera4(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس جلو و چپ با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_jolo_chap_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_aghab_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera5(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس کامل عقب با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_aghab_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_aghab_rast_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera6(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس عقب و راست با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_aghab_rast_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_aghab_chap_pelak == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera7(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس عقب و چپ با پلاک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_aghab_chap_pelak),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_shasi_number == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera8(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس شماره شاسی حک شده' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_shasi_number),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_motor_number == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera9(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس شماره موتور حک شده' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_motor_number),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_ayene_kamel == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera10(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس آینه ها کامل' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_ayene_kamel),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_lavazem_janebi_fabrik == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera11(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس لوازم جانبی فابریک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_lavazem_janebi_fabrik),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_gheyre_fabrik_otagh == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera12(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس لوازم غیرفابریک اتاق' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_gheyre_fabrik_otagh),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_zapas == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera13(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس زاپاس' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_zapas),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_ring_lastic == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera14(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس رینگ و لاستیک' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_ring_lastic),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_kilometr_airbag == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera15(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس صفحه کیلومتر با ایربگ' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_kilometr_airbag),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_options == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera16(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس آپشن ها' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_options),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_shishe == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera17(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس شیشه ها' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_shishe),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_cart == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera18(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس کارت خودرو' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_cart),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * .07 , vertical: height * .01),                        height: ((height * .75) * .88) * .2,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                          color: Colors.red,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: (filess.image_khesarat == null)
                      ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _openCamera19(context, filess);
                      });
                    },
                    child: Container(
                      height: ((height * .75) * .88) * .15,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.grey.withOpacity(.8),
                            ),
                            Text('عکس خسارات فعلی' , style: TextStyle(fontSize: 12.0 , height: 1),)
                          ],
                        ),
                      ),
                    ),
                  )
                      : _decidedImageView(filess.image_khesarat),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _decidedImageView(File imageFile) {
    return Container(
      height: ((MediaQuery.of(context).size.height * .75) * .88) * .15,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13.0)),
            image: DecorationImage(
                fit: BoxFit.cover, image: Image.file(imageFile).image)),
      ),
    );
  }

  _openCamera(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_koli= picture;
    });
  }

  _openCamera2(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera3(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera4(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera5(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera6(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera7(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }

  _openCamera8(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera9(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera10(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera11(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera12(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera13(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera14(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera15(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera16(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera17(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera18(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera19(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
  _openCamera20(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak= picture;
    });
  }
}
