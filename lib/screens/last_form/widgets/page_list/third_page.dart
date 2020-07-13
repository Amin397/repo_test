import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:load/load.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
import 'package:sanannegarexperts/screens/last_form/success_page.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/classes/file_class.dart';

class Page3 extends StatefulWidget {
  Filess file;
  Strings strings;
  TextController tController;

  Page3(Filess file, Strings strings, TextController tController) {
    this.file = file;
    this.strings = strings;
    this.tController = tController;
  }

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * .75;
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Center(
        child: Scaffold(
            backgroundColor: Colors.white.withOpacity(.0001),
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.white.withOpacity(.65),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: height * .85,
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_koli == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera1(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس کامل',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_koli),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_jolo_pelak == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera2(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس کامل جلو با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_jolo_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_jolo_rast_pelak ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera3(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس جلو و راست با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_jolo_rast_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_jolo_chap_pelak ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera4(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس جلو و چپ با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_jolo_chap_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_aghab_pelak == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera5(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس کامل عقب با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_aghab_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_aghab_rast_pelak ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera6(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس عقب و راست با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_aghab_rast_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_aghab_chap_pelak ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera7(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس عقب و چپ با پلاک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_aghab_chap_pelak),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_shasi_number ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera8(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس شماره شاسی حک شده',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_shasi_number),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_motor_number ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera9(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس شماره موتور حک شده',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_motor_number),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_ayene_kamel == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera10(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس آینه ها کامل',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_ayene_kamel),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file
                                              .image_lavazem_janebi_fabrik ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera11(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس لوازم جانبی فابریک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(widget
                                          .file.image_lavazem_janebi_fabrik),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget
                                              .file.image_gheyre_fabrik_otagh ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera12(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس لوازم غیرفابریک اتاق',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(widget
                                          .file.image_gheyre_fabrik_otagh),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_zapas == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera13(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس زاپاس',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_zapas),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_ring_lastic == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera14(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس رینگ و لاستیک',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_ring_lastic),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_kilometr_airbag ==
                                          null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera15(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس صفحه کیلومتر با ایربگ',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_kilometr_airbag),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_options == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera16(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس آپشن ها',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_options),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_shishe == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera17(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس شیشه ها',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_shishe),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_cart == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera18(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس کارت خودرو',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_cart),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * .07,
                                      vertical: height * .01),
                                  height: (height) * .2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                  child: (widget.file.image_khesarat == null)
                                      ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _openCamera19(
                                                  context, widget.file);
                                            });
                                          },
                                          child: Container(
                                            height:
                                                ((height * .75) * .88) * .15,
                                            width: 150,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Colors.grey
                                                        .withOpacity(.8),
                                                  ),
                                                  Text(
                                                    'عکس خسارات فعلی',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        height: 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : _decidedImageView(
                                          widget.file.image_khesarat),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    elevation: 15.0,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    child: Hero(
                      tag: "background-color",
                      child: GestureDetector(
                        onTap: () {
                          showLoadingDialog();
                          makePostRequest(API_V1, {
                            'target': 'initialVisit',
                            'state_id': widget.strings.ostan,
                            'city_id': widget.strings.city,
                            'request_id': 3,
                            'presenter_id': 4,
                            'type_of_car_id': widget.strings.brand_mashin,
                            'car_model_id': widget.strings.model_mashin,
                            'company_id': widget.strings.sherkate_bime_motaghazi,
                            'company_branch_id': widget.strings.shobe_bimeGozar,
                            'caruse_id': widget.strings.carbary_mashin,
                            'year_id': widget.strings.year,
                            'car_insurance_type_id': widget.strings.noee_bime_mashin,
                            'insurancerisk_id': widget.strings.khatarate_pishnehadi,
                            'insurance_company_id': widget.strings.namayandegi,
                            'cbranch_id': 14,
                            'customer_id': 15,
                            'presenters_visit_i_koli': 'widget.file.image_koli.path',
                            'presenters_visit_i_jbp': '',
                            'presenters_visit_i_jvrbp': '',
                            'presenters_visit_i_jvcbp': '',
                            'presenters_visit_i_kbp': '',
                            'presenters_visit_i_avrbp': '',
                            'presenters_visit_i_avcbp': '',
                            'presenters_visit_i_shasih': '',
                            'presenters_visit_i_motorh': '',
                            'presenters_visit_i_ayenek': '',
                            'presenters_visit_i_janbif': '',
                            'presenters_visit_i_ghirfd': '',
                            'presenters_visit_i_zapas': '',
                            'presenters_visit_i_ringvl': '',
                            'presenters_visit_i_kilomvi': '',
                            'presenters_visit_i_option': '',
                            'presenters_visit_i_shishe': '',
                            'presenters_visit_i_kart': '',
                            'presenters_visit_i_khsart': '',
                            'presenters_visit_desc': 'amin',
                            'presenters_visit_adamb': 'amin',
                            'presenters_visit_address': 'amin',
                            'presenters_visit_time': 'amin',
                            'presenters_visit_coordinate': 'amin',
                            'presenters_visit_date': 'amin',
                            'presenters_visit_limit': 'amin',
                            'presenters_visit_request_time': 'amin',
                            'presenters_visit_request_date': 'amin',
                            'presenters_visit_reference': 'amin',
                            'presenters_visit_sal': 'amin',
                            'presenters_visit_pelak': 'amin',
                            'presenters_visit_shasi': 'amin',
                            'presenters_visit_motor': 'amin',
                            'presenters_visit_zarfit': 'amin',
                            'presenters_visit_rang': 'amin',
                            'presenters_visit_arzesh': 'amin',
                          }).then((res) async {
                            if (res['ok']) {
                              print('send request is success');
                              print(widget.tController.arzesh.text);
                              print(widget.strings.ostan);
//                              print(widget.file.image_koli.path);
                              hideLoadingDialog();
                              Navigator.of(context).pushReplacement(PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 600),
                                  pageBuilder: (_, __, ___) => SuccessPage()));
                            } else {
                              print('error');
                            }
                          });
                        },
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Center(
                            child: Icon(Icons.check),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 20.0,
                                    spreadRadius: 10.0)
                              ]),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
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

  _openCamera1(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_koli = picture;
    });
  }

  _openCamera2(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_pelak = picture;
    });
  }

  _openCamera3(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_rast_pelak = picture;
    });
  }

  _openCamera4(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_jolo_chap_pelak = picture;
    });
  }

  _openCamera5(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_aghab_pelak = picture;
    });
  }

  _openCamera6(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_aghab_rast_pelak = picture;
    });
  }

  _openCamera7(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_aghab_chap_pelak = picture;
    });
  }

  _openCamera8(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_shasi_number = picture;
    });
  }

  _openCamera9(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_motor_number = picture;
    });
  }

  _openCamera10(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_ayene_kamel = picture;
    });
  }

  _openCamera11(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_lavazem_janebi_fabrik = picture;
    });
  }

  _openCamera12(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_koli = picture;
    });
  }

  _openCamera13(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_zapas = picture;
    });
  }

  _openCamera14(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_ring_lastic = picture;
    });
  }

  _openCamera15(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_kilometr_airbag = picture;
    });
  }

  _openCamera16(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_options = picture;
    });
  }

  _openCamera17(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_shishe = picture;
    });
  }

  _openCamera18(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_cart = picture;
    });
  }

  _openCamera19(BuildContext context, Filess f) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      f.image_khesarat = picture;
    });
  }
}
