import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Copyright extends StatelessWidget {
  _renderBg() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.lightBlue, Colors.lime])),
    );
  }

  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            color: Color(0xFF6EBDBD),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage(
                    'assets/images/img/cpy.jpg',
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
              Text('Copyright for Images',
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: 10,
              ),
              Text(
                'Click here to see copyright disclamer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        back: Container(
          height: 450,
          decoration: BoxDecoration(
            color: Color(0xFF426BF0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text('Copyright Disclamer')),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  '* This Image features materials protected by the Fair Use guidelines of Section 107 of the Copyright Act. All rights reserved to the copyright owners.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '* We are using the Images for Education Purpose only',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '* In case you found any Copyright Images let inform us via About Us section we will take immediate action(remove) to your Images',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Text(
                'Click here to flip front',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Copyright Disclamer'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.lightGreen])),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _renderBg(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // _renderAppBar(context),
              _renderContent(context),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
