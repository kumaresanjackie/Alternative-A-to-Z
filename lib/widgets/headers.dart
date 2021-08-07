import 'package:abcde/Alpha/Birds.dart';
import 'package:abcde/Alpha/BodyParts.dart';
import 'package:abcde/Alpha/Country.dart';
import 'package:abcde/Alpha/Fish.dart';
import 'package:abcde/Alpha/Flowers.dart';
import 'package:abcde/Alpha/Fruits.dart';
import 'package:abcde/Alpha/Chemistry.dart';
import 'package:abcde/Alpha/Vehicle.dart';
import 'package:abcde/Alpha/Works.dart';
import 'package:abcde/Alpha/Animals.dart';
import 'package:abcde/widgets/Payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SlideAnimation4 extends StatefulWidget {
  @override
  _SlideAnimation4State createState() => _SlideAnimation4State();
}

class _SlideAnimation4State extends State<SlideAnimation4> {
  get index => null;

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    List pages = [
      ['Animals', Animals()],
      ['Birds', Birds()],
      ['Body Parts', BodyParts()],
      ['Country', Country()],
      ['Chemistry', Chemistry()],
      ['Fish', Fish()],
      ['Flowers', Flowers()],
      ['Fruits', Fruits()],
      ['Vehicle', Vehicle()],
      ['Works', Works()]
    ];

    List images = [
      'assets/images/img/lion.png',
      'assets/images/img/macaw.png',
      'assets/images/img/physiology.png',
      'assets/images/img/coronavirus.png',
      'assets/images/img/chemistry.png',
      'assets/images/img/fish.png',
      'assets/images/img/flowers.png',
      'assets/images/img/fruits.png',
      'assets/images/img/hatchback.png',
      'assets/images/img/hard-work.png'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Alternative A to Z'),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.lightGreen])),
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => MyApp()));
        //     },
        //     icon: Icon(
        //       Icons.coffee,
        //     ),
        //     tooltip: 'By Me A Coffe',
        //   )
        // ],
        brightness: Brightness.dark,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.deepPurpleAccent])),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pages[index][1]),
                        );
                      },
                      child: Container(
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(images[index])),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                images[index],
                              ),
                            ),
                          ),
                          Center(
                              child: Text(
                            pages[index][0],
                            style: TextStyle(
                              fontFamily: 'Aladin',
                              fontSize: 28,
                            ),
                          )),
                        ]),
                        margin: EdgeInsets.only(bottom: _w / 20),
                        height: _w / 4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.green,
                            Colors.lightBlue,
                            Colors.purple
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 40,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
