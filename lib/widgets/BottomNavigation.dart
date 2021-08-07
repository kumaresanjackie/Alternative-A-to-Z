import 'package:abcde/widgets/Aboutus.dart';
import 'package:abcde/widgets/Copyright.dart';
import 'package:abcde/widgets/Otherapps.dart';
import 'package:abcde/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:cool_nav/cool_nav.dart';

class FlipBoxNavigationBarHome extends StatefulWidget {
  FlipBoxNavigationBarHome({Key? key}) : super(key: key);

  @override
  _FlipBoxNavigationBarHomeState createState() =>
      _FlipBoxNavigationBarHomeState();
}

class _FlipBoxNavigationBarHomeState extends State<FlipBoxNavigationBarHome> {
  late int currentIndex;

  _updateIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  List texts = [
    SlideAnimation4(),
    Copyright(),
    Otherapps(),
    Aboutus(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: texts[currentIndex],
        ),
        bottomNavigationBar: FlipBoxNavigationBar(
          currentIndex: currentIndex,
          backgroundColor:
              LinearGradient(colors: [Colors.yellow, Colors.indigoAccent]),
          verticalPadding: 20.0,
          items: <FlipBoxNavigationBarItem>[
            FlipBoxNavigationBarItem(
              name: 'Home',
              selectedIcon: Icons.home,
              unselectedIcon: Icons.home_outlined,
              selectedBackgroundColor: Colors.deepPurpleAccent[200]!,
              unselectedBackgroundColor: Colors.deepPurpleAccent[100]!,
            ),
            FlipBoxNavigationBarItem(
              name: 'Copyright',
              selectedIcon: Icons.copyright,
              unselectedIcon: Icons.copyright_outlined,
              selectedBackgroundColor: Colors.indigoAccent[200]!,
              unselectedBackgroundColor: Colors.indigoAccent[100]!,
            ),
            FlipBoxNavigationBarItem(
              name: 'More Apps',
              selectedIcon: Icons.apps,
              unselectedIcon: Icons.apps_outlined,
              selectedBackgroundColor: Colors.greenAccent[200]!,
              unselectedBackgroundColor: Colors.greenAccent[100]!,
            ),
            FlipBoxNavigationBarItem(
              name: 'About Me',
              selectedIcon: Icons.person,
              unselectedIcon: Icons.person_pin_circle,
              selectedBackgroundColor: Colors.pinkAccent[200]!,
              unselectedBackgroundColor: Colors.pinkAccent[100]!,
            ),
          ],
          onTap: _updateIndex,
        ));
  }
}
