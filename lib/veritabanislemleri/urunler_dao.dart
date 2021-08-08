import 'package:odesan_elektronik/model/urun.dart';
import 'package:odesan_elektronik/veritabani_yardimcisi.dart';

class UrunlerDao {
  Future<List<Urun>> tumUrunleriGetir() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT * FROM urunler");

    return List.generate(
      maps.length,
      (index) {
        var satir = maps[index];

        Urun u = Urun(satir["urun_id"], satir["urun_ad"], satir["urun_resim"],
            satir["urun_aciklama"]);
        return u;
      },
    );
  }
}
