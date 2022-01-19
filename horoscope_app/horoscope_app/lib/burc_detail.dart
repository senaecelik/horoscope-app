import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope horoscope;
  const HoroscopeDetail({Key? key, required this.horoscope}) : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) => appBarFindColor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  widget.horoscope.horoscopeName + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.horoscope.horoscopeBigImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.horoscope.horoscopeDetail,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarFindColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.horoscope.horoscopeBigImage}"));
    appBarColor = _generator.darkMutedColor!.color;
    setState(() {});
  }
}
