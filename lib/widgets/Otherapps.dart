import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Otherapps extends StatelessWidget {
  List text = ['தமிழ் கற்போம்'];
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("My Other Apps"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.orange, Colors.lightGreen])),
          ),
          centerTitle: true,
          brightness: Brightness.dark),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.redAccent])),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: text.length,
            itemBuilder: (BuildContext c, int i) {
              return AnimationConfiguration.staggeredList(
                position: i,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    flipAxis: FlipAxis.y,
                    child: Container(
                      child: Stack(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              text[i],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'For Kids',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Aladin'),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text('Comming Soon..')),
                        ),
                      ]),
                      margin: EdgeInsets.only(bottom: _w / 20),
                      height: _w / 4,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
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
