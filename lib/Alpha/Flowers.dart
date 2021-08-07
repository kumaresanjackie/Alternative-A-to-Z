import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Flowers extends StatefulWidget {
  Flowers({Key? key}) : super(key: key);

  @override
  _FlowersState createState() => _FlowersState();
}

class _FlowersState extends State<Flowers> {
  List images = [
    'assets/images/iimage/flowers.jpg',
    'assets/images/f/a.jpg',
    'assets/images/f/b.jpg',
    'assets/images/f/c.jpg',
    'assets/images/f/d.jpg',
    'assets/images/f/e.jpg',
    'assets/images/f/f.jpg',
    'assets/images/f/g.jpg',
    'assets/images/f/h.jpg',
    'assets/images/f/i.jpg',
    'assets/images/f/j.jpg',
    'assets/images/f/k.jpg',
    'assets/images/f/l.jpg',
    'assets/images/f/m.jpg',
    'assets/images/f/n.jpg',
    'assets/images/f/o.jpg',
    'assets/images/f/p.jpg',
    'assets/images/f/q.jpg',
    'assets/images/f/r.jpg',
    'assets/images/f/s.jpg',
    'assets/images/f/t.jpg',
    'assets/images/f/u.jpg',
    'assets/images/f/v.jpg',
    'assets/images/f/w.jpg',
    'assets/images/f/x.jpg',
    'assets/images/f/y.jpg',
    'assets/images/f/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flowers'),
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
    Audio('assets/audio/Flowers/a$index.mp3'),
  );
}
