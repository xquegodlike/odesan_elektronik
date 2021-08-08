import 'dart:io';

import 'package:flutter/material.dart';
import 'package:odesan_elektronik/pdf/pdf_api.dart';
import 'package:odesan_elektronik/pdf/pdf_goruntuleme.dart';
import 'package:odesan_elektronik/utilities/constants.dart';

class KatalogScreen extends StatelessWidget {
  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );

  @override
  Widget build(BuildContext context) {

    final snackBar =  SnackBar(

      backgroundColor: Colors.purple.shade300,
      duration: Duration(milliseconds: 2000),
      content: Text(
        "Dosya Bulunamadı",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: backGroundColor,
        title: Text(
          "Katalog",
          style: menuTextStyle,
        ),
      ),
      body: Material(
        color: backGroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 3.5),
            children: [
              GestureDetector(
                onTap: () async {
                  final url = 'otobusyolcubilgilendirme.pdf';
                  final file = await PdfApi.loadFirebase(url);

                  if (file == null)
                    return ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  else
                    openPDF(context, file);
                },
                child: Card(
                  color: backGroundColor,
                  elevation: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset("assets/otobusyolcubilgilendirme.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Otobüs Yolcu Bilgilendirme Sistemi",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
