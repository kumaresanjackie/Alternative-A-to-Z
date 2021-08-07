import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Vehicle extends StatefulWidget {
  Vehicle({Key? key}) : super(key: key);

  @override
  _VehicleState createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  List images = [
    'assets/images/iimage/Vehicles.jpeg',
    'assets/images/v/a.jpg',
    'assets/images/v/b.jpg',
    'assets/images/v/c.jpg',
    'assets/images/v/d.jpg',
    'assets/images/v/e.jpg',
    'assets/images/v/f.jpg',
    'assets/images/v/g.jpg',
    'assets/images/v/h.jpg',
    'assets/images/v/i.jpg',
    'assets/images/v/j.jpg',
    'assets/images/v/k.jpg',
    'assets/images/v/l.jpg',
    'assets/images/v/m.jpg',
    'assets/images/v/n.jpg',
    'assets/images/v/o.jpg',
    'assets/images/v/p.jpg',
    'assets/images/v/q.jpg',
    'assets/images/v/r.jpg',
    'assets/images/v/s.jpg',
    'assets/images/v/t.jpg',
    'assets/images/v/u.jpg',
    'assets/images/v/v.jpg',
    'assets/images/v/w.jpg',
    'assets/images/v/x.jpg',
    'assets/images/v/y.jpg',
    'assets/images/v/z.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
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
          autoplayDelay: 4500,
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
    Audio('assets/audio/Vehicles/v$index.mp3'),
  );
}
