import 'package:flutter/material.dart';

import 'model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope horoscope;
  const HoroscopeItem({Key? key, required this.horoscope}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/burcDetay", arguments: horoscope);
          },
          leading: Image.asset(
            "images/" + horoscope.horoscopeSmallImage,
          ),
          title: Text(
            horoscope.horoscopeName,
            style: myTextStyle.headline5,
          ),
          subtitle: Text(horoscope.horoscopeDate),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
