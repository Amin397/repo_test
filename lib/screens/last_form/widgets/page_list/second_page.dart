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
    return Container(
      child: Center(
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height * .75) * .88,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      TextFormField(
                        controller: widget.arzesh,
                        decoration: InputDecoration(hintText: 'ارزش روز خودرو'),
                      ),
                      TextFormField(
                        controller: widget.sal_sakht,
                        decoration: InputDecoration(hintText: 'سال ساخت'),
                      ),
                      TextFormField(
                        controller: widget.saate_erja_markazi,
                        decoration:
                            InputDecoration(hintText: 'ساعت ارجاع ستاد مرکزی'),
                      ),
                      TextFormField(
                        controller: widget.address,
                        decoration: InputDecoration(hintText: 'آدرس'),
                      ),
                      TextFormField(
                        controller: widget.limit_time,
                        decoration: InputDecoration(
                            hintText: 'حداکثر زمان بازدید مجاز'),
                      ),
                      TextFormField(
                        controller: widget.zarfiat,
                        decoration: InputDecoration(hintText: 'ظرفیت'),
                      ),
                      TextFormField(
                        controller: widget.saate_hamahangi,
                        decoration: InputDecoration(
                            hintText: 'ساعت هماهنگی بازدید با مالک'),
                      ),
                      TextFormField(
                        controller: widget.pelak,
                        decoration: InputDecoration(hintText: 'پلاک'),
                      ),
                      TextFormField(
                        controller: widget.shasi,
                        decoration: InputDecoration(hintText: 'شاسی'),
                      ),
                      TextFormField(
                        controller: widget.tozihat,
                        decoration: InputDecoration(hintText: 'توضیحات'),
                      ),
                      TextFormField(
                        controller: widget.motor,
                        decoration: InputDecoration(hintText: 'موتور'),
                      ),
                      TextFormField(
                        controller: widget.range,
                        decoration: InputDecoration(hintText: 'رنگ'),
                      ),
                      TextFormField(
                        controller: widget.bimegozar_name,
                        decoration: InputDecoration(hintText: 'نام بیمه گذار'),
                      ),
                      TextFormField(
                        controller: widget.tarikh_bazdid,
                        decoration: InputDecoration(hintText: 'تاریخ بازدید'),
                      ),
                      TextFormField(
                        controller: widget.saate_bazdid,
                        decoration: InputDecoration(hintText: 'ساعت بازدید'),
                      ),
                      TextFormField(
                        controller: widget.elateadam,
                        decoration: InputDecoration(hintText: 'غلت عدم بازدید'),
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
}
