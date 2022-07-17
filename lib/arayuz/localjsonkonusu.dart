import "package:flutter/material.dart";
import "dart:convert";

class LocalJsonKonusu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LocalState();
}

class LocalState extends State<LocalJsonKonusu>{
  List ogrenci = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Local Json Konusu"),      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: FutureBuilder(
            // local jason dosyasını okuyalım
            future: DefaultAssetBundle.of(context).loadString("assets/veriler/sinif.json"),
            builder: (context, cevap){
              ogrenci = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Okul No: ${ogrenci[index]["okulno"]}"),
                        Text("Adı : ${ogrenci[index]["adi"]}"),
                        Text("Soyadı : ${ogrenci[index]["soyadi"]}"),
                        Text("Cinsiyet : ${ogrenci[index]["cinsiyet"]}"),
                      ],
                    ),
                  );
                },
                itemCount: ogrenci == null ? 0 : ogrenci.length,
              );
            },
          ),
        ),
      ),
    );
  }
}