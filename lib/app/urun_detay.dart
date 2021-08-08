import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:odesan_elektronik/model/urun.dart';
import 'package:odesan_elektronik/utilities/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class UrunDetay extends StatefulWidget {
  Urun urun;

  UrunDetay({@required this.urun});

  @override
  _UrunDetayState createState() => _UrunDetayState();
}

class _UrunDetayState extends State<UrunDetay> {

  final snackBar =  SnackBar(
    backgroundColor: Colors.purple.shade200,
    duration: Duration(milliseconds: 3000),
    content: Text(
      "URL Geçici Olarak Devre Dışı Lütfen Daha Sonra Tekrar Deneyiniz",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    ),
  );


  String _url = "http://www.odesan.com.tr/tr/%C3%BCr%C3%BCnler~4";

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : ScaffoldMessenger.of(context).showSnackBar(snackBar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.urun.urun_ad, style: menuTextStyle),
        backgroundColor: backGroundColor,
      ),
      body: Material(
        color: backGroundColor,
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/resimler/${widget.urun.urun_resim}"),
                  ListTile(
                    leading: Icon(
                      Icons.bookmarks,
                      color: Colors.white,
                    ),
                    title: Text(
                      widget.urun.urun_aciklama,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.web_sharp,
                      color: Colors.white,
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: 'Detaylı Bilgi İçin Web Sitemizi Ziyaret Edin',
                        style: new TextStyle(color: Colors.blue),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            _launchURL();
                          },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
