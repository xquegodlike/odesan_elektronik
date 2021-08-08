import 'package:flutter/material.dart';
import 'package:odesan_elektronik/utilities/constants.dart';

class PolitikamizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: backGroundColor,
        title: Text("Politikamız",style: menuTextStyle,),
      ),
      body: Material(
        color: backGroundColor,
        child: Center(
          child: Text("Ürünler sayfası"),
        ),
      ),
    );
  }
}
