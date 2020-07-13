import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/classes/file_class.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/page_list/first_page.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/page_list/second_page.dart';
import 'package:sanannegarexperts/screens/last_form/widgets/page_list/third_page.dart';

class LastForm extends StatefulWidget {
  @override
  _LastFormState createState() => _LastFormState();
}

class _LastFormState extends State<LastForm>
    with SingleTickerProviderStateMixin {

  static PageController _pageController;

  TextEditingController arzesh = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController zarfiat = TextEditingController();
  TextEditingController pelak = TextEditingController();
  TextEditingController shasi = TextEditingController();
  TextEditingController elateadam = TextEditingController();
  TextEditingController tozihat = TextEditingController();
  TextEditingController motor = TextEditingController();
  TextEditingController range = TextEditingController();
  TextEditingController bimegozar_name = TextEditingController();
  TextEditingController tarikh_bazdid = TextEditingController();
  TextEditingController saate_bazdid = TextEditingController();
  TextEditingController sal_sakht = TextEditingController();
  TextEditingController saate_erja_markazi = TextEditingController();
  TextEditingController limit_time = TextEditingController();
  TextEditingController saate_hamahangi = TextEditingController();

  String ostan = 'تهران';
  String city = 'تهران';
  String sherkate_bime_motaghazi = 'پارسیان';
  String namayandegi = 'نمایندگی تهران';
  String brand_mashin = 'پراید';
  String carbary_mashin = 'سواری';
  String model_mashin = '111';
  String shobe_bimeGozar = 'شعبه کرج';
  String year = 'شمسی';
  String noee_bime_mashin = 'بدنه';
  String khatarate_pishnehadi = 'آتش سوزی';

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

  Filess files;
  Strings strings;
  TextController tController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);

    files = Filess(
        image_koli,
        image_jolo_pelak,
        image_jolo_rast_pelak,
        image_jolo_chap_pelak,
        image_aghab_pelak,
        image_aghab_rast_pelak,
        image_aghab_chap_pelak,
        image_shasi_number,
        image_motor_number,
        image_ayene_kamel,
        image_lavazem_janebi_fabrik,
        image_gheyre_fabrik_otagh,
        image_zapas,
        image_ring_lastic,
        image_kilometr_airbag,
        image_options,
        image_shishe,
        image_cart,
        image_khesarat);

    strings = Strings(
      ostan ,
      city ,
      sherkate_bime_motaghazi,
      namayandegi,
      brand_mashin,
      carbary_mashin,
      model_mashin,
      shobe_bimeGozar,
      year,
      noee_bime_mashin,
      khatarate_pishnehadi
    );

    tController = TextController(
      address,
      arzesh,
      zarfiat,
      pelak,
      shasi,
      elateadam,
      tozihat,
      motor,
      range,
      bimegozar_name,
      tarikh_bazdid,
      saate_bazdid,
      sal_sakht,
      saate_erja_markazi,
      limit_time,
      saate_hamahangi
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Page1(
          strings,
          _pageController
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Page2(
            tController,
            _pageController),
      ),
      Padding(padding: EdgeInsets.all(20.0),
          child: Page3(files , strings , tController)
      ),
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/main_form_bg.jpg'))),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(color: Colors.black.withOpacity(.55)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height * .75,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  children: pages,
                  controller: _pageController,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  height: height * .07,
                  margin: EdgeInsets.symmetric(
                      horizontal: width * .2, vertical: height * .03),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      color: Colors.deepOrangeAccent),
                  child: Center(
                    child: Text(
                      'ثبت اطلاعات',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
