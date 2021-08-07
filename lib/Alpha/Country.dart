import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  Country({Key? key}) : super(key: key);

  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  List images = [
    'assets/images/iimage/country.jpg',
    'assets/images/c/a.jpg',
    'assets/images/c/b.jpg',
    'assets/images/c/c.jpg',
    'assets/images/c/d.jpg',
    'assets/images/c/e.jpg',
    'assets/images/c/f.jpg',
    'assets/images/c/g.jpg',
    'assets/images/c/h.jpg',
    'assets/images/c/i.jpg',
    'assets/images/c/j.jpg',
    'assets/images/c/k.jpg',
    'assets/images/c/l.jpg',
    'assets/images/c/m.jpg',
    'assets/images/c/n.jpg',
    'assets/images/c/o.jpg',
    'assets/images/c/p.jpg',
    'assets/images/c/q.jpg',
    'assets/images/c/r.jpg',
    'assets/images/c/s.jpg',
    'assets/images/c/t.jpg',
    'assets/images/c/u.jpg',
    'assets/images/c/v.jpg',
    'assets/images/c/w.jpg',
    'assets/images/c/x.jpg',
    'assets/images/c/y.jpg',
    'assets/images/c/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.lightGreen])),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.limeAccent, Colors.indigo])),
        child: Swiper(
          itemCount: images.length,
          loop: false,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(27.0),
              child: Image.asset(
                images[index],
              ),
            );
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          onIndexChanged: (index) {
            playaudio(index);
          },
          autoplayDelay: 4000,
          autoplay: true,
          pagination: FractionPaginationBuilder(
              color: Colors.red, activeColor: Colors.green, fontSize: 10),
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.home,
            color: Colors.red,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

void playaudio(index) async {
  AssetsAudioPlayer.newPlayer().open(
    Audio('assets/audio/Country/s$index.mp3'),
  );
}
