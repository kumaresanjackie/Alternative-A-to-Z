import 'package:flutter/material.dart';
import 'package:flutter_about_page/components/about-page.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AboutPage ab = AboutPage();
    ab.customStyle(
        descFontFamily: "Roboto", listTextFontFamily: "RobotoMedium");

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("About Me"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.orange, Colors.lightGreen])),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purpleAccent, Colors.redAccent])),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/img/profile.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Center(
                  child: Text(
                'Kumaresan Jackie',
                style: TextStyle(fontSize: 20),
              )),
              Divider(
                height: 10,
              ),
              Text(
                'App Version 1.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 10,
              ),
              // Text('Special Thanks To'),
              // Text(
              //   'Buvana',
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   'Vijay Judo',
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
//               ab.addDescription("""
// """),
              ab.addGroup("Connect with me"),
              ab.addEmail("kumaresanjackie@gmail.com"),
              ab.addFacebook("alternaviteatoz"),
              ab.addTwitter("KumaresanJackie"),
              // ab.addYoutube("UCeVMnSShP_Iviwkknt83cww"),
              // ab.addPlayStore("com.tripline.radioapp"),
              ab.addGithub("kumaresanjackie"),
              ab.addInstagram("kumaresan_jackie"),
              // ab.addWebsite("http://www.facebook.com"),
              // ab.addItemWidget(Icon(Icons.add), "title")
            ],
          ),
        ));
  }
}
