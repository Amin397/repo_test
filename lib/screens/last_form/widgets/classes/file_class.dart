import 'dart:io';
import 'package:flutter/material.dart';

class Filess {
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
  Filess(
      [this.image_koli,
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
      this.image_khesarat]
      );
}

class Strings{
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

  Strings(
      this.ostan,
      this.city,
      this.sherkate_bime_motaghazi,
      this.namayandegi,
      this.brand_mashin,
      this.carbary_mashin,
      this.model_mashin,
      this.shobe_bimeGozar,
      this.year,
      this.noee_bime_mashin,
      this.khatarate_pishnehadi);
}

class TextController{
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

  TextController(
      this.arzesh,
      this.address,
      this.zarfiat,
      this.pelak,
      this.shasi,
      this.elateadam,
      this.tozihat,
      this.motor,
      this.range,
      this.bimegozar_name,
      this.tarikh_bazdid,
      this.saate_bazdid,
      this.sal_sakht,
      this.saate_erja_markazi,
      this.limit_time,
      this.saate_hamahangi);
}
