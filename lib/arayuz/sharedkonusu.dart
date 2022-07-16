import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKonusu extends StatefulWidget {
  const SharedKonusu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SharedState();
}

class SharedState extends State<SharedKonusu> {
  final isimCtrl = TextEditingController();
  final soyisimCtrl = TextEditingController();
  final genelCtrl = GlobalKey<FormState>();

  String isimStr = "";
  String soyisimStr = "";
  bool kayitDurumu = false;
  int kayitNo = 0;

  @override
  void dispose() {
    isimCtrl.dispose();
    soyisimCtrl.dispose();
    super.dispose();
  }

  void kayitYap(String gIsim, String gSoyisim) async {
    final kayitAraci = await SharedPreferences.getInstance();
    if (genelCtrl.currentState!.validate()) {
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayitno", 1);
      kayitAraci.setString("isim", gIsim);
      kayitAraci.setString("soyisim", gSoyisim);
      // işlem başarılı olursa toast message verelim.
      Fluttertoast.showToast(
        msg: "Kayıt başarılı",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM
      );
    }
  }

  Future<void> kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();
    bool? kDurum = kayitAraci.getBool("durum");
    int? kNo = kayitAraci.getInt("kayitno");
    String? kIsim = kayitAraci.getString("isim");
    String? kSoyisim = kayitAraci.getString("soyisim");
    setState(() {
      kayitDurumu = kDurum!;
      kayitNo = kNo!;
      isimStr = kIsim!;
      soyisimStr = kSoyisim!;
    });
    // işlem başarılı olursa toast message verelim.
    Fluttertoast.showToast(
        msg: "Kayıt gösterildi",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM
    );
  }

  Future<void> kayitSil() async {
    final kayitAraci = await SharedPreferences.getInstance();
    // Tüm kayitları silmek için kayitAraci.clear
    // istediğimiz kaydı silmek için tek tek ekliyoruz
    kayitAraci.remove("durum");
    kayitAraci.remove("kayitno");
    kayitAraci.remove("isim");
    kayitAraci.remove("soyisim");
    // işlem başarılı olursa toast message verelim.
    Fluttertoast.showToast(
        msg: "Kayıt silindi",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences Kullanımı"),
      ),
      body: Form(
        key: genelCtrl,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (deger) {
                  if (deger.toString().length < 2) {
                    // if (deger.length)
                    return "Lütfen isminizi en az üç (3) karakter olarak yazınız";
                  }
                },
                controller: isimCtrl,
                decoration: const InputDecoration(
                  hintText: "İsminizi Giriniz ...",
                ),
              ),
              TextFormField(
                validator: (deger) {
                  if (deger.toString().length < 2) {
                    return "Lütfen soyisminizi en az üç (3) karakter olarak yazınız";
                  }
                },
                controller: soyisimCtrl,
                decoration: const InputDecoration(
                  hintText: "Soyisminizi Giriniz ...",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.indigo),
                        child: const Text("Kaydet"),
                        onPressed: () => kayitYap(isimCtrl.text, soyisimCtrl.text),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: const Text("Getir"),
                        onPressed: () => kayitGoster(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: const Text("Sil"),
                        onPressed: () => kayitSil(),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("İsim : $isimStr"),
                      Text("Soyisim : $soyisimStr"),
                      Text("Kayıt durumu : $kayitDurumu"),
                      Text("Kayıt Numarası : $kayitNo"),
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
