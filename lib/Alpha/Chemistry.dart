import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Chemistry extends StatefulWidget {
  Chemistry({Key? key}) : super(key: key);

  @override
  _ChemistryState createState() => _ChemistryState();
}

class _ChemistryState extends State<Chemistry> {
  List images = [
    'assets/images/iimage/Chemistry.jpg',
    'assets/images/che/a.jpg',
    'assets/images/che/b.jpg',
    'assets/images/che/c.jpg',
    'assets/images/che/d.jpg',
    'assets/images/che/e.jpg',
    'assets/images/che/f.jpg',
    'assets/images/che/g.jpg',
    'assets/images/che/h.jpg',
    'assets/images/che/i.jpg',
    'assets/images/che/j.jpg',
    'assets/images/che/k.jpg',
    'assets/images/che/l.jpg',
    'assets/images/che/m.jpg',
    'assets/images/che/n.jpg',
    'assets/images/che/o.jpg',
    'assets/images/che/p.jpg',
    'assets/images/che/q.jpg',
    'assets/images/che/r.jpg',
    'assets/images/che/s.jpg',
    'assets/images/che/t.jpg',
    'assets/images/che/u.jpg',
    'assets/images/che/v.jpg',
    'assets/images/che/w.jpg',
    'assets/images/che/x.jpg',
    'assets/images/che/y.jpg',
    'assets/images/che/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemistry'),
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
          // loop: false,
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
            color: Colors.purple,
            size: 30,
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
    Audio('assets/audio/Chemistry/a$index.mp3'),
  );
}
