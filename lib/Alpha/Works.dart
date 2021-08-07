import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Works extends StatefulWidget {
  Works({Key? key}) : super(key: key);

  @override
  _WorksState createState() => _WorksState();
}

class _WorksState extends State<Works> {
  List images = [
    'assets/images/iimage/works.jpg',
    'assets/images/w/a.jpg',
    'assets/images/w/b.jpg',
    'assets/images/w/c.jpg',
    'assets/images/w/d.jpg',
    'assets/images/w/e.jpg',
    'assets/images/w/f.jpg',
    'assets/images/w/g.jpg',
    'assets/images/w/h.jpg',
    'assets/images/w/i.jpg',
    'assets/images/w/j.jpg',
    'assets/images/w/k.jpg',
    'assets/images/w/l.jpg',
    'assets/images/w/m.jpg',
    'assets/images/w/n.jpg',
    'assets/images/w/o.jpg',
    'assets/images/w/p.jpg',
    'assets/images/w/q.jpg',
    'assets/images/w/r.jpg',
    'assets/images/w/s.jpg',
    'assets/images/w/t.jpg',
    'assets/images/w/u.jpg',
    'assets/images/w/v.jpg',
    'assets/images/w/w.jpg',
    'assets/images/w/x.jpg',
    'assets/images/w/y.jpg',
    'assets/images/w/z.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Works'),
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
    Audio('assets/audio/Works/a$index.mp3'),
  );
}
