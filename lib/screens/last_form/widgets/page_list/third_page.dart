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
                                __ImagePicker(1, width, height, 'عکس کامل' , widget.file.image_koli),
                                __ImagePicker(2,width,height , 'عکس کامل جلو با پلاک' , widget.file.image_jolo_pelak),
                                __ImagePicker(3, width, height, 'عکس جلو و راست با پلاک' , widget.file.image_jolo_rast_pelak),
                                __ImagePicker(4, width, height, 'عکس جلو و چپ با پلاک', widget.file.image_jolo_chap_pelak),
                                __ImagePicker(5, width, height, 'عکس کامل عقب با پلاک', widget.file.image_aghab_pelak),
                                __ImagePicker(6, width, height, 'عکس عقب و راست با پلاک', widget.file.image_aghab_rast_pelak),
                                __ImagePicker(7, width, height, 'عکس عقب و چپ با پلاک', widget.file.image_aghab_chap_pelak),
                                __ImagePicker(8, width, height, 'عکس شماره شاسی حک شده', widget.file.image_shasi_number),
                                __ImagePicker(9, width, height, 'عکس شماره موتور حک شده', widget.file.image_motor_number),
                                __ImagePicker(10, width, height, 'عکس آینه ها کامل', widget.file.image_ayene_kamel),
                                __ImagePicker(11, width, height, 'عکس لوازم جانبی فابریک', widget.file.image_lavazem_janebi_fabrik),
                                __ImagePicker(12, width, height, 'عکس لوازم غیرفابریک اتاق', widget.file.image_gheyre_fabrik_otagh),
                                __ImagePicker(13, width, height, 'عکس زاپاس', widget.file.image_zapas),
                                __ImagePicker(14, width, height, 'عکس رینگ و لاستیک', widget.file.image_ring_lastic),
                                __ImagePicker(15, width, height, 'عکس صفحه کیلومتر با ایربگ', widget.file.image_kilometr_airbag),
                                __ImagePicker(16, width, height, 'عکس آپشن ها', widget.file.image_options),
                                __ImagePicker(17, width, height, 'عکس شیشه ها', widget.file.image_shishe),
                                __ImagePicker(18, width, height, 'عکس کارت خودرو', widget.file.image_cart),
                                __ImagePicker(19, width, height, 'عکس خسارات فعلی', widget.file.image_khesarat)
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

  Widget _decidedImageView(File imageFile , String image_name) {
    return Container(
      height: ((MediaQuery.of(context).size.height * .75) * .88) * .15,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Stack(overflow: Overflow.clip,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: Image.file(imageFile).image)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                  Colors.transparent
                ]
              )
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                image_name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          )
        ],
      )
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

  Widget __ImagePicker(i,width,height , image_name , File file){
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * .07,
          vertical: height * .01),
      height: (height) * .25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(15.0)),
          border: Border.all(
              color: Colors.red,
              width: 1,
              style: BorderStyle.solid)),
      child: (file == null)
          ? GestureDetector(
        onTap: () {
          setState(() {
            _cameraProccesor(i);
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
                  image_name,
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
        file,
        image_name,),
    );
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

  void _cameraProccesor(arg) {
    switch(arg){
      case 1:{
        _openCamera1(
            context, widget.file);
        break;
      }
      case 2:{
        _openCamera2(
            context, widget.file);
        break;
        }
      case 3:{
        _openCamera3(context, widget.file);
        break;
      }
      case 4:{
        _openCamera4(context, widget.file);
        break;
      }
      case 5:{
        _openCamera5(context, widget.file);
        break;
      }
      case 6:{
        _openCamera6(context, widget.file);
        break;
      }
      case 7:{
        _openCamera7(context, widget.file);
        break;
      }
      case 8:{
        _openCamera8(context, widget.file);
        break;
      }
      case 9:{
        _openCamera9(context, widget.file);
        break;
      }
      case 10:{
        _openCamera10(context, widget.file);
        break;
      }
      case 11:{
        _openCamera11(context, widget.file);
        break;
      }
      case 12:{
        _openCamera12(context, widget.file);
        break;
      }
      case 13:{
        _openCamera13(context, widget.file);
        break;
      }
      case 14:{
        _openCamera14(context, widget.file);
        break;
      }
      case 15:{
        _openCamera15(context, widget.file);
        break;
      }
      case 16:{
        _openCamera16(context, widget.file);
        break;
      }
      case 17:{
        _openCamera17(context, widget.file);
        break;
      }
      case 18:{
        _openCamera18(context, widget.file);
        break;
      }
      case 19:{
        _openCamera19(context, widget.file);
        break;
      }
    }
  }
}
