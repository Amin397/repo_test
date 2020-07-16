import 'package:flutter/material.dart';
import 'package:sanannegarexperts/screens/parts_table/complete_parts_table.dart';

class PartsTable extends StatefulWidget {
  @override
  _PartsTableState createState() => _PartsTableState();
}

class _PartsTableState extends State<PartsTable> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: height * .15,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * .06,
                            vertical: (height * .15) * .14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Icon(Icons.remove_red_eye),
                            ),
                            Expanded(
                                child: Material(
                              elevation: 5.0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              child: Container(
                                  height: (height * .15) * .3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Colors.black87.withOpacity(.7)),
                                      color: Colors.blue.withOpacity(.2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.search),
                                          hintText: 'جست و جو بر اساس نام قطعه',
                                          hintStyle: TextStyle(
                                            fontSize: 12.0,
                                          )),
                                    ),
                                  )),
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: width,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .03, vertical: 10.0),
                                  child: _categoriesContainer(
                                      'جلوبندی', (height * .15), width),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .03, vertical: 10.0),
                                  child: _categoriesContainer(
                                      'جلوبندی', (height * .15), width),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .03, vertical: 10.0),
                                  child: _categoriesContainer(
                                      'جلوبندی', (height * .15), width),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .03, vertical: 10.0),
                                  child: _categoriesContainer(
                                      'جلوبندی', (height * .15), width),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .03, vertical: 10.0),
                                  child: _categoriesContainer(
                                      'جلوبندی', (height * .15), width),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        _buildItems(
                            context,
                            (height * .15),
                            width,
                            'assets/images/dar_aghab.png',
                            'درب عقب تندر 90',
                            '1392/4/24',
                            '400.000'),
                        _buildItems(
                            context,
                            (height * .15),
                            width,
                            'assets/images/cheragh_aghab_dena.png',
                            'چراغ خطر دنا',
                            '1392/4/24',
                            '400.000'),
                        _buildItems(
                            context,
                            (height * .15),
                            width,
                            'assets/images/ayene_pars.png',
                            'آینه بیرونی پرشیا',
                            '1392/4/24',
                            '400.000'),
                        _buildItems(
                            context,
                            (height * .15),
                            width,
                            'assets/images/separ_jolo_pars.png',
                            'سپر جلو پرشیا',
                            '1392/4/24',
                            '400.000'),
                      ],
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

  Widget _categoriesContainer(name, height, width) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      elevation: 3.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.4),
            border: Border.all(color: Colors.black54, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ),
    );
  }

  Widget _buildItems(context, height, width, path, partName, date, dbPrice) {
    return Container(
      padding: EdgeInsets.all(12.0),
      height: 200.0,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: width * .5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: Image.asset(path).image),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7.0,
                        spreadRadius: 3.0,
                        color: Colors.black12)
                  ]),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black45,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black45,
                              Colors.black87
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _buildDescriptions(context, partName, date, dbPrice),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ConfigurationParts(path , partName , dbPrice)));
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                            spreadRadius: 1.0)
                      ]),
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildDescriptions(context, partName, date, dbPrice) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: MediaQuery.of(context).size.width * .48,
        height: 150.0,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 7.0, spreadRadius: 3)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              partName,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              date,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'قیمت ثبت شده ستاد :$dbPrice ',
              style: TextStyle(color: Colors.black38, fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
