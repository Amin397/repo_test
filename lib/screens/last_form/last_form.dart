import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:load/load.dart';
import 'package:sanannegarexperts/login/constants/constants.dart';
import 'package:sanannegarexperts/login/funcs.dart';
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

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
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
            ostan,
            city,
            sherkate_bime_motaghazi,
            namayandegi,
            brand_mashin,
            carbary_mashin,
            model_mashin,
            shobe_bimeGozar,
            year,
            noee_bime_mashin,
            khatarate_pishnehadi,
            _pageController),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Page2(
            arzesh,
            address,
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
            saate_hamahangi,
            _pageController),
      ),
      Padding(
          padding: EdgeInsets.all(20.0),
          child: Page3(
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
              image_khesarat,
            _pageController
          )),
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
            )
          ],
        ),
      ),
    );
  }
}

//  showLoadingDialog();
//  makePostRequest(API_V1, {
//  'target': 'initialVisit',
//  'state_id': ostan,
//  'city_id': city,
//  'request_id': sherkate_bime_motaghazi,
//  'presenter_id': brand_mashin,
//  'type_of_car_id': model_mashin,
//  'car_model_id': shobe_bimeGozar,
//  'company_id': year,
//  'company_branch_id': noee_bime_mashin,
//  'caruse_id': 9,
//  'year_id': 10,
//  'car_insurance_type_id': 11,
//  'insurancerisk_id': 12,
//  'insurance_company_id': 13,
//  'cbranch_id': 14,
//  'customer_id': 15,
//  'presenters_visit_i_koli': 'amin',
//  'presenters_visit_i_jbp': 'amin',
//  'presenters_visit_i_jvrbp': 'amin',
//  'presenters_visit_i_jvcbp': 'amin',
//  'presenters_visit_i_kbp': 'amin',
//  'presenters_visit_i_avrbp': 'amin',
//  'presenters_visit_i_avcbp': 'amin',
//  'presenters_visit_i_shasih': 'amin',
//  'presenters_visit_i_motorh': 'amin',
//  'presenters_visit_i_ayenek': 'amin',
//  'presenters_visit_i_janbif': 'amin',
//  'presenters_visit_i_ghirfd': 'amin',
//  'presenters_visit_i_zapas': 'amin',
//  'presenters_visit_i_ringvl': 'amin',
//  'presenters_visit_i_kilomvi': 'amin',
//  'presenters_visit_i_option': 'amin',
//  'presenters_visit_i_shishe': 'amin',
//  'presenters_visit_i_kart': 'amin',
//  'presenters_visit_i_khsart': 'amin',
//  'presenters_visit_desc': 'amin',
//  'presenters_visit_adamb': 'amin',
//  'presenters_visit_address': 'amin',
//  'presenters_visit_time': 'amin',
//  'presenters_visit_coordinate': 'amin',
//  'presenters_visit_date': 'amin',
//  'presenters_visit_limit': 'amin',
//  'presenters_visit_request_time': 'amin',
//  'presenters_visit_request_date': 'amin',
//  'presenters_visit_reference': 'amin',
//  'presenters_visit_sal': 'amin',
//  'presenters_visit_pelak': 'amin',
//  'presenters_visit_shasi': 'amin',
//  'presenters_visit_motor': 'amin',
//  'presenters_visit_zarfit': 'amin',
//  'presenters_visit_rang': 'amin',
//  'presenters_visit_arzesh': 'amin',
//  }).then((res) async {
//  if (res['ok']) {
//  print('send request is success');
//  hideLoadingDialog();
//  } else {
//  print('amin');
//  }
//  });
//}
