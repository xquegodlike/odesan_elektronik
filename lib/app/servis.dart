import 'package:flutter/material.dart';
import 'package:odesan_elektronik/utilities/constants.dart';

class ServisScreen extends StatefulWidget {
  @override
  _ServisScreenState createState() => _ServisScreenState();
}

class _ServisScreenState extends State<ServisScreen> {
  Widget _buildAdSoyad() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.supervised_user_circle_sharp,
                    color: Colors.black,
                  ),
                  hintText: 'Ad Soyad',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFirma() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.work,
                    color: Colors.black,
                  ),
                  hintText: 'Firma.',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTelNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  hintText: 'Tel No',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.black,
                  ),
                  hintText: 'Email.',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAdres() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 150.0,
          child: Column(
            children: [
              TextFormField(
                maxLines: 4,
                keyboardType: TextInputType.streetAddress,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  hintText: 'Adres Bilgileri',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUrunTipi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.handyman_sharp,
                    color: Colors.black,
                  ),
                  hintText: 'Ürün Tipi',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUrunModeli() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.tag,
                    color: Colors.black,
                  ),
                  hintText: 'Ürün Modeli',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSeriNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.height_sharp,
                    color: Colors.black,
                  ),
                  hintText: 'Ürün SeriNo',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServisTalepKonusu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 150.0,
          child: Column(
            children: [
              TextFormField(
                maxLines: 4,
                keyboardType: TextInputType.streetAddress,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.campaign_rounded,
                    color: Colors.black,
                  ),
                  hintText: 'Servis Talep Konusu',
                  hintStyle: kHintTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: backGroundColor,
          title: Text(
            "SERVİS TALEP FORMU",
            style: menuTextStyle
          ),
        ),
        body: Material(
          color: backGroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildAdSoyad(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildFirma(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildTelNo(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildEmail(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildAdres(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildUrunTipi(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildUrunModeli(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildSeriNo(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildServisTalepKonusu(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey.shade100),
                      ),
                      onPressed: () => print("Tıklandı"),
                      child: Text("Talep Gönder",style: nLabelTextStyle,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
