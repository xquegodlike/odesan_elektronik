import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odesan_elektronik/app/hakkimizda.dart';
import 'package:odesan_elektronik/app/iletisim.dart';
import 'package:odesan_elektronik/app/katalog.dart';
import 'package:odesan_elektronik/app/politikamiz.dart';
import 'package:odesan_elektronik/app/servis.dart';
import 'package:odesan_elektronik/app/urunler.dart';
import 'package:odesan_elektronik/utilities/constants.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: backGroundColor,
      statusBarColor: backGroundColor,
    ),
  );
  runApp(MyApp());
}

const primaryColor = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odesan Bilişim Elektronik',
      theme: ThemeData(
        backgroundColor: Colors.black,
        primaryColor: primaryColor,
        buttonColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.black, size: 26),
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  double ekranYuksekligi, ekranGenisligi;
  bool menuAcikMi = false;
  AnimationController _animationController;
  Animation<double> _scaleAnimation;
  Animation<Offset> _menuOffsetAnimation;
  Duration _duration = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _scaleAnimation = Tween(begin: 1.0, end: 0.6).animate(_animationController);
    _menuOffsetAnimation = Tween(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ekranYuksekligi = MediaQuery.of(context).size.height;
    ekranGenisligi = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            menuOlustur(context),
            dashboardOlustur(context),
          ],
        ),
      ),
    );
  }

  Widget menuOlustur(BuildContext context) {
    return SlideTransition(
      position: _menuOffsetAnimation,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/odesan.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Anasayfa(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.blueAccent.shade200,
                ),
                label: Text(
                  "Anasayfa",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UrunlerScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.blueAccent.shade200,
                ),
                label: Text(
                  "Ürünler",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => KatalogScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.book_sharp,
                  color: Colors.blueAccent.shade200,
                ),
                label: Text(
                  "Katalog",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ServisScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.tv, color: Colors.blueAccent.shade200),
                label: Text(
                  "Servis",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PolitikamizScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.movie_creation, color: Colors.blueAccent.shade200),
                label: Text(
                  "Poltikamız",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => IletisimScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.account_circle_sharp, color: Colors.blueAccent.shade200),
                label: Text(
                  "İletişim",
                  style: menuTextStyle,
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HakkimizdaScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.insert_drive_file, color: Colors.blueAccent.shade200),
                label: Text(
                  "Hakkında",
                  style: menuTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dashboardOlustur(BuildContext context) {
    return AnimatedPositioned(
      duration: _duration,
      top: 0,
      bottom: 0,
      left: menuAcikMi ? ekranGenisligi * 0.5 : 0,
      right: menuAcikMi ? ekranGenisligi * -0.4 : 0,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          elevation: 8,
          color: backGroundColor,
          borderRadius:
              menuAcikMi ? BorderRadius.all(Radius.circular(30)) : null,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              if (menuAcikMi) {
                                _animationController.reverse();
                              } else {
                                _animationController.forward();
                              }
                              menuAcikMi = !menuAcikMi;
                            });
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.black,
                          )),
                      Text(
                        "Anasayfa",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/odesan.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/metro.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/metro1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Slider ile Yazı arasında boşluk bırakmak için
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: ekranGenisligi,
                    height: ekranYuksekligi * 0.15,
                    decoration: cBoxDecorationStyle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Odesan bilişim elektronik 2007 yılından beri elektronik ve yazılım alanında faaliyet gösteren genç ve dinamik bir firmadır.",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: ekranGenisligi,
                    height: ekranYuksekligi * 0.18,
                    decoration: cBoxDecorationStyle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Her geçen gün ürün portföyünü ve çözümünü geliştiren, teknolojiyi takip eden bir firmayız. "
                        "Standart ürün imalatının dışında proje bazında  özel çözümlerde üretmekteyiz.",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
