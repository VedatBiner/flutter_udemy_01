import "package:flutter/material.dart";
import "dart:async";
import "dart:io";
import "package:path_provider/path_provider.dart";

class KayitIslemleri {
  // Dosyanın yerini bulalım
  Future<String> get dosyaYolu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }

  // Dosyayı oluşturalım
  Future<File> get yerelDosya async {
    final yol = await dosyaYolu;
    return File("$yol/yenidosya.txt"); // yeni dosya oluşturuluyor.
  }

  // Dosya okuma işlemleri
  Future<String> dosyaOku() async {
    try {
      final dosya = await yerelDosya;
      String icerik = await dosya.readAsString();
      return icerik;
    } catch (h) {
      return "Dosya okunurken hata oluştu : $h";
    }
  }

  // Dosyaya yazma işlemleri
  Future<File> dosyaYaz(String gIcerik) async {
    final dosya = await yerelDosya;
    return dosya.writeAsString("$gIcerik");
  }
}

class DosyaIslemleri extends StatefulWidget {
  const DosyaIslemleri({Key? key, required this.kayitislemi}) : super(key: key);
  final KayitIslemleri kayitislemi;
  @override
  State<DosyaIslemleri> createState() => DosyaState();
}

class DosyaState extends State<DosyaIslemleri> {
  final yaziCtrl = TextEditingController();
  String veri = "";
  Future<File> veriKaydet() async {
    setState(() {
      veri = yaziCtrl.text;
    });
    return widget.kayitislemi.dosyaYaz(veri);
  }

  // uygulama ilk açılırken olmasını sitediğimiz işlemler
  @override
  void initState() {
    super.initState();
  }

  void veriOku() {
    widget.kayitislemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dosya İşlemleri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: "Dosyaya yazmak istediğiniz verileri buraya yazın.",
            ),
            controller: yaziCtrl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: veriKaydet,
                    child: const Text(
                      "Kaydet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: veriOku,
                    child: const Text(
                      "Oku",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(veri),
            ),
          ),
        ],
      ),
    );
  }
}










