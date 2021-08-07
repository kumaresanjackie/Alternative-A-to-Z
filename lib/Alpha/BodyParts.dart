import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class BodyParts extends StatefulWidget {
  BodyParts({Key? key}) : super(key: key);

  @override
  _BodyPartsState createState() => _BodyPartsState();
}

class _BodyPartsState extends State<BodyParts> {
  List images = [
    'assets/images/iimage/bodyparts.jpg',
    'assets/images/bp/a.jpg',
    'assets/images/bp/b.jpg',
    'assets/images/bp/c.jpg',
    'assets/images/bp/d.jpg',
    'assets/images/bp/e.jpg',
    'assets/images/bp/f.jpg',
    'assets/images/bp/g.jpg',
    'assets/images/bp/h.jpg',
    'assets/images/bp/i.jpg',
    'assets/images/bp/j.jpg',
    'assets/images/bp/k.jpg',
    'assets/images/bp/l.jpg',
    'assets/images/bp/m.jpg',
    'assets/images/bp/n.jpg',
    'assets/images/bp/o.jpg',
    'assets/images/bp/p.jpg',
    'assets/images/bp/q.jpg',
    'assets/images/bp/r.jpg',
    'assets/images/bp/s.jpg',
    'assets/images/bp/t.jpg',
    'assets/images/bp/u.jpg',
    'assets/images/bp/v.jpg',
    'assets/images/bp/w.jpg',
    'assets/images/bp/x.jpg',
    'assets/images/bp/y.jpg',
    'assets/images/bp/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Parts'),
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
    Audio('assets/audio/Body_Parts/b$index.mp3'),
  );
}
