import "package:flutter/material.dart";
import 'package:flutter_udemy_01/veritabani/vtyardimcisi.dart';
import 'package:flutter_udemy_01/veritabani/ogrenci.dart';

class VtAnasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => VtState();
}

class VtState extends State<VtAnasayfa>{
  VtYardimcisi vtYardimcisi = VtYardimcisi();
  List<Ogrenci> ogrenciler = [];

  bool duzenleMi = false; // ekleme mi? Güncelleme mi? kontrolü

  final formKontrolcu = GlobalKey<FormState>();

  final isimCtrl = TextEditingController();
  final soyisimCtrl = TextEditingController();
  final sinifCtrl = TextEditingController();
  final noCtrl = TextEditingController().toString();

  _ogrenciEkle() {
    vtYardimcisi.ogrenciKaydet(Ogrenci(noCtrl.hashCode, isimCtrl.text, soyisimCtrl.text, sinifCtrl.text))
        .then((deger) {
          debugPrint(deger.toString());
          if(deger > 0) {
            listeYenile();
            Navigator.pop(context);
            isimCtrl.clear();
            soyisimCtrl.clear();
            sinifCtrl.clear();
        }
    });
  }

  _ogrenciSil(Ogrenci ogrnci) {
    vtYardimcisi.ogrenciSil(ogrnci).then((cvp){
      if (cvp > 0){
        listeYenile();
      }
    });
  }

  _ogrenciGuncelle(int ono) {
    var ogr = Ogrenci(noCtrl.hashCode, isimCtrl.text, soyisimCtrl.text, sinifCtrl.text);
    ogr.no = ono;
    vtYardimcisi.ogrenciGuncelle(ogr).then((cvp){
      if(cvp){
        listeYenile();
        Navigator.pop(context);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    listeYenile();
  }

  listeYenile(){
    vtYardimcisi.ogrencileriGetir().then((gelen) {
      setState(() {
        ogrenciler = gelen;
      });
      debugPrint(gelen.toString());
    });
  }

  void eklemeEkraniAc({required Ogrenci ogrenci}){
    // düzenleme mi ? ekleme mi? kontrolü
    if (ogrenci != null){
      duzenleMi = true;
      isimCtrl.text = ogrenci.isim;
      soyisimCtrl.text = ogrenci.soyisim;
      sinifCtrl.text = ogrenci.sinif;
    } else {
      duzenleMi = false;
      isimCtrl.clear();
      soyisimCtrl.clear();
      sinifCtrl.clear();
    }
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text(duzenleMi ? "Öğrenci Düzenle" : "Öğrenci Ekle"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formKontrolcu,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: isimCtrl,
                          decoration: const InputDecoration(
                            hintText: "Öğrencinin ismini girin",
                          ),
                        ),
                        TextFormField(
                          controller: soyisimCtrl,
                          decoration: const InputDecoration(
                              hintText: "Öğrencinin soyismini girin",
                          ),
                        ),
                        TextFormField(
                          controller: sinifCtrl,
                          decoration: const InputDecoration(
                              hintText: "Öğrencinin sınıfını girin",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
            ),
            ),
            actions: [
              TextButton(
                onPressed: () => duzenleMi ? _ogrenciGuncelle(ogrenci.no) : _ogrenciEkle,
                child: Text(duzenleMi ? "Düzenle" : "Ekle"),
              ),
              TextButton(
                // Önceki ekrana geri dönecek
                onPressed: () => Navigator.pop(context),
                child: const Text("İptal"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Veri Tabanı İşlemleri"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => eklemeEkraniAc(ogrenci: Ogrenci(noCtrl.hashCode, isimCtrl.text, soyisimCtrl.text, sinifCtrl.text)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ogrenciler.length,
        itemBuilder: (BuildContext context, int sira){
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text("${ogrenciler[sira].isim} ${ogrenciler[sira].soyisim}"),
                  leading: Text("${ogrenciler[sira].no}"),
                  subtitle: Text("Öğrencinin Sınıfı ${ogrenciler[sira].sinif}"),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () => eklemeEkraniAc(ogrenci: ogrenciler[sira]),
                      child: const Text("Güncelle"),
                    ),
                    TextButton(
                      onPressed: () => _ogrenciSil(ogrenciler[sira]),
                      child: const Text("Sil"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}





