import 'package:flutter/material.dart';
import 'package:odesan_elektronik/app/urun_detay.dart';
import 'package:odesan_elektronik/model/urun.dart';
import 'package:odesan_elektronik/utilities/constants.dart';
import 'package:odesan_elektronik/veritabanislemleri/urunler_dao.dart';

class UrunlerScreen extends StatefulWidget {
  Urun urun;

  UrunlerScreen({@required this.urun});

  @override
  _UrunlerScreenState createState() => _UrunlerScreenState();
}

class _UrunlerScreenState extends State<UrunlerScreen> {
  Future<List<Urun>> tumUrunler() async {
    var urun = UrunlerDao().tumUrunleriGetir();
    return urun;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: backGroundColor,
        title: Text(
          "Ürünler",
          style: menuTextStyle,
        ),
      ),
      body: Material(
        color: backGroundColor,
        child: FutureBuilder<List<Urun>>(
          future: tumUrunler(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              var urunListe = snapshot.data;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2 / 3.5),
                itemCount: 6,
                itemBuilder: (context,index) {
                  var urun = urunListe[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => UrunDetay(urun: urun,),
                        ),
                      );
                    },
                    child: Card(
                      color: backGroundColor,
                      elevation: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/resimler/${urun.urun_resim}"),
                          ),
                          Text(
                            urun.urun_ad,
                            style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300,color: Colors.black,),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
