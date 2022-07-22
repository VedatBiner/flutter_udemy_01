import 'package:flutter_udemy_01/veritabani/ogrenci.dart';
import 'dart:async';
import "dart:io" as io;
import "package:path_provider/path_provider.dart";
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

class VtYardimcisi{
  static final VtYardimcisi _yardimci = VtYardimcisi.icislem();

  factory VtYardimcisi() => _yardimci; // RAM 'de yer tutması için oluşturuldu.
  VtYardimcisi.icislem();

  // Hata başlangıcı burayı gösteriyor.
  static late Database _vt; // vt : Veri Tabanı "_" sadece bulunduğu class içinden ulaşım demek


  Future<Database> get veritabani async {
    if (_vt != null) return _vt;
    _vt = await olusturVt();
    return _vt;
  }

  olusturVt() async {
    io.Directory dosyaKonumu = await getApplicationDocumentsDirectory();
    String yol = join(dosyaKonumu.path, "okul.db"); // path oluştu
    var veriTabani = await openDatabase(yol, version: 1, onCreate: _ilkAcilis); // veri tabanı oluştur
    return veriTabani;
  }

  _ilkAcilis(Database vt, int versiyon) async {
    // Ogrenci adında bir tablo oluşturup, no, isim, soyisim, sınıf alanları tanımlıyoruz.
    // Alışkanlık olarak SQL komutlarını büyük harf yazdık
    // tablomuz dört sütunlu
    await vt.execute("CREATE TABLE Ogrenci(no INTEGER PRIMARY KEY AUTOINCREMENT, isim TEXT, soyisim TEXT, sinif TEXT)");
  }

  Future<int> ogrenciKaydet(Ogrenci ogrnci) async {
    // Öğrenci ekle
    var veritab = await veritabani;
    int cvp = await veritab.insert("Ogrenci", ogrnci.haritaYap());
    return cvp;
  }

  Future<List<Ogrenci>> ogrencileriGetir() async {
    // Öğrencileri listele (bütün kayıtlar)
    var veritab = await veritabani;
    List<Map> liste = await veritab.rawQuery("SELECT * FROM Ogrenci");
    List<Ogrenci> ogrenciler = [];
    for (int i = 0; i < liste.length; i++){
      var ogrenci = Ogrenci(liste[i]["isim"], liste[i]["soyisim"], liste[i]["sinif"], liste[i]["no"]);
      ogrenci.numaraVer(liste[i]["no"]);
      ogrenciler.add(ogrenci);
    }
    return ogrenciler;
  }

  Future<int> ogrenciSil(Ogrenci ogrnci) async{
    // Öğrenci silme işlemi
    var veritab = await veritabani;
    int cvp = await veritab.rawDelete("DELETE FROM Ogrenci WHERE no = ?", [ogrnci.no]);
    return cvp;
  }

  Future<bool> ogrenciGuncelle(Ogrenci ogrnci) async {
    var veritab = await veritabani;
    int cvp = await veritab.update("Ogrenci", ogrnci.haritaYap(),
        where: "no = ?", whereArgs: <int>[ogrnci.no]); // ? değişkene değer atamak anlamına geliyor.
    return cvp > 0 ? true : false;
  }

}



