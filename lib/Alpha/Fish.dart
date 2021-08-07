import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Fish extends StatefulWidget {
  Fish({Key? key}) : super(key: key);

  @override
  _FishState createState() => _FishState();
}

class _FishState extends State<Fish> {
  List images = [
    'assets/images/iimage/fish.jpg',
    'assets/images/fi/a.jpg',
    'assets/images/fi/b.jpg',
    'assets/images/fi/c.jpg',
    'assets/images/fi/d.jpg',
    'assets/images/fi/e.jpg',
    'assets/images/fi/f.jpg',
    'assets/images/fi/g.jpg',
    'assets/images/fi/h.jpg',
    'assets/images/fi/i.jpg',
    'assets/images/fi/j.jpg',
    'assets/images/fi/k.jpg',
    'assets/images/fi/l.jpg',
    'assets/images/fi/m.jpg',
    'assets/images/fi/n.jpg',
    'assets/images/fi/o.jpg',
    'assets/images/fi/p.jpg',
    'assets/images/fi/q.jpg',
    'assets/images/fi/r.jpg',
    'assets/images/fi/s.jpg',
    'assets/images/fi/t.jpg',
    'assets/images/fi/u.jpg',
    'assets/images/fi/v.jpg',
    'assets/images/fi/w.jpg',
    'assets/images/fi/x.jpg',
    'assets/images/fi/y.jpg',
    'assets/images/fi/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish'),
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
    Audio('assets/audio/Fish/a$index.mp3'),
  );
}
