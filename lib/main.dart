import 'dart:async';
import 'package:abcde/widgets/BottomNavigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      debugShowCheckedModeBanner: false,
      home: MyCustomSplashScreen(),
    ));

class MyCustomSplashScreen extends StatefulWidget {
  @override
  _MyCustomSplashScreenState createState() => _MyCustomSplashScreenState();
}

class _MyCustomSplashScreenState extends State<MyCustomSplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(Duration(seconds: 4), () {
      setState(() {
        _fontSize = 1.06;
      });
    });

    Timer(Duration(seconds: 4), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 10), () {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FlipBoxNavigationBarHome(),
            ));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.white,
            Colors.green,
          ],
        )),
        child: Stack(
          children: [
            Column(
              children: [
                AnimatedContainer(
                    duration: Duration(milliseconds: 2000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height:
                        MediaQuery.of(context).size.height * 0.8 / _fontSize),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: _textOpacity,
                  child: Text(
                    'ALTERNATIVE A to Z',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'Aladin',
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: animation1.value,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 9000),
                curve: Curves.fastLinearToSlowEaseIn,
                opacity: _containerOpacity,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.height * 1,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        'assets/images/img/intro1.gif',
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
