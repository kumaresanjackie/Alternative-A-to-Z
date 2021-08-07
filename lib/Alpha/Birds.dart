import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Birds extends StatefulWidget {
  Birds({Key? key}) : super(key: key);

  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  List images = [
    'assets/images/iimage/birds.jpg',
    'assets/images/b/a.jpg',
    'assets/images/b/b.jpg',
    'assets/images/b/c.jpg',
    'assets/images/b/d.jpg',
    'assets/images/b/e.jpg',
    'assets/images/b/f.jpg',
    'assets/images/b/g.jpg',
    'assets/images/b/h.jpg',
    'assets/images/b/i.jpg',
    'assets/images/b/j.jpg',
    'assets/images/b/k.jpg',
    'assets/images/b/l.jpg',
    'assets/images/b/m.jpg',
    'assets/images/b/n.jpg',
    'assets/images/b/o.jpg',
    'assets/images/b/p.jpg',
    'assets/images/b/q.jpg',
    'assets/images/b/r.jpg',
    'assets/images/b/s.jpg',
    'assets/images/b/t.jpg',
    'assets/images/b/u.jpg',
    'assets/images/b/v.jpg',
    'assets/images/b/w.jpg',
    'assets/images/b/x.jpg',
    'assets/images/b/y.jpg',
    'assets/images/b/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birds'),
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
    Audio('assets/audio/Birds/a$index.mp3'),
  );
}
