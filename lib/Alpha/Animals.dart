import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  List images = [
    'assets/images/iimage/animals.jpg',
    'assets/images/a/a.jpg',
    'assets/images/a/b.jpg',
    'assets/images/a/c.jpg',
    'assets/images/a/d.jpg',
    'assets/images/a/e.jpg',
    'assets/images/a/f.jpg',
    'assets/images/a/g.jpg',
    'assets/images/a/h.jpg',
    'assets/images/a/i.jpg',
    'assets/images/a/j.jpg',
    'assets/images/a/k.jpg',
    'assets/images/a/l.jpg',
    'assets/images/a/m.jpg',
    'assets/images/a/n.jpg',
    'assets/images/a/o.jpg',
    'assets/images/a/p.jpg',
    'assets/images/a/q.jpg',
    'assets/images/a/r.jpg',
    'assets/images/a/s.jpg',
    'assets/images/a/t.jpg',
    'assets/images/a/u.jpg',
    'assets/images/a/v.jpg',
    'assets/images/a/w.jpg',
    'assets/images/a/x.jpg',
    'assets/images/a/y.jpg',
    'assets/images/a/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animals'),
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
    Audio('assets/audio/Animals/a$index.mp3'),
  );
}
