import 'package:flutter/material.dart';
import 'package:horoscope_app/burc_item.dart';
import 'package:horoscope_app/data/strings.dart';

import 'model/horoscope.dart';

// ignore: must_be_immutable
class HoroscopeList extends StatefulWidget {
  late List<Horoscope> allHoroscope;
  HoroscopeList({Key? key}) : super(key: key) {
    allHoroscope = readyForHoroscope();
  }

  @override
  State<HoroscopeList> createState() => _HoroscopeListState();
  List<Horoscope> readyForHoroscope() {
    List<Horoscope> gecici = [];
    for (int i = 0; i < 12; i++) {
      var hName = Strings.BURC_ADLARI[i];
      var hDate = Strings.BURC_TARIHLERI[i];
      var hDetail = Strings.BURC_GENEL_OZELLIKLERI[i];
      var hSmallImage = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var hBigImage =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Horoscope addHoroscope =
          Horoscope(hName, hDate, hDetail, hSmallImage, hBigImage);
      gecici.add(addHoroscope);
    }
    return gecici;
  }
}

class _HoroscopeListState extends State<HoroscopeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar Listesi"),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: widget.allHoroscope.length,
        itemBuilder: (context, index) {
          return HoroscopeItem(horoscope: widget.allHoroscope[index]);
        },
      )),
    );
  }
}
