import 'package:flutter/material.dart';
import 'package:odesan_elektronik/utilities/constants.dart';

class HakkimizdaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: backGroundColor,
        title: Text(
          "Hakkımızda",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Material(
          color: backGroundColor,
          child: Container(
            width: width,
            height: height,
            color: backGroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/odesan.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Material(
                  color: backGroundColor,
                  child: Container(
                    width: width,
                    height: height * 0.45,
                    decoration: cBoxDecorationStyle,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Odesan bilişim elektronik 2007 yılından beri elektronik ve yazılım alanında faaliyet gösteren genç ve dinamik bir firmadır."
                          "Her geçen gün ürün portföyünü ve çözümünü geliştiren. Teknolojiyi takip eden bir firmayız."
                          "Standart ürün imalatının dışında proje bazında özel çözümlerde üretmektedir."
                          "Özellikle yolcu bilgilendirme sistemleri, akıllı duraklar zaman saatleri,spor müsahabakaları için skorbodlar. gerçek zaman saatler, kronometreler ve ekranlar üzerine ürünlerimiz mevcuttur."
                          "Teknolojinin imkan verdiği ölçüler içerisinde müşterilerimize çözüm üretmeyi bedel edinmiş bir firmayız.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
