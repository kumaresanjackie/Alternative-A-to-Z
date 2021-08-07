import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  Fruits({Key? key}) : super(key: key);

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  List images = [
    'assets/images/iimage/fruits.jpg',
    'assets/images/fr/a.jpg',
    'assets/images/fr/b.jpg',
    'assets/images/fr/c.jpg',
    'assets/images/fr/d.jpg',
    'assets/images/fr/e.jpg',
    'assets/images/fr/f.jpg',
    'assets/images/fr/g.jpg',
    'assets/images/fr/h.jpg',
    'assets/images/fr/i.jpg',
    'assets/images/fr/j.jpg',
    'assets/images/fr/k.jpg',
    'assets/images/fr/l.jpg',
    'assets/images/fr/m.jpg',
    'assets/images/fr/n.jpg',
    'assets/images/fr/o.jpg',
    'assets/images/fr/p.jpg',
    'assets/images/fr/q.jpg',
    'assets/images/fr/r.jpg',
    'assets/images/fr/s.jpg',
    'assets/images/fr/t.jpg',
    'assets/images/fr/u.jpg',
    'assets/images/fr/v.jpg',
    'assets/images/fr/w.jpg',
    'assets/images/fr/x.jpg',
    'assets/images/fr/y.jpg',
    'assets/images/fr/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruits'),
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
    Audio('assets/audio/Fruits/a$index.mp3'),
  );
}
