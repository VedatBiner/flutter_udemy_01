import "package:flutter/material.dart";

class AlertVeTextField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AlertState();
}

class AlertState extends State<AlertVeTextField>{
  final yaziKontrolcusu = TextEditingController();
  final genelKontrolcu = GlobalKey<FormState>();

  @override
  void dispose() {
    yaziKontrolcusu.dispose();
    super.dispose();
  }

  void selamla(){
    if (genelKontrolcu.currentState!.validate()){
      showDialog(
          context: context,
          barrierDismissible: true, //mesaj kutusu dışına basınca kapatma
          builder: (context){
            return AlertDialog(
              title: const Text("Selamlama metnimiz"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text("Merhaba ${yaziKontrolcusu.text}"),
                    const Text("Sizi sistemimiz adına selamlıyorum."),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: const Text("Tamam"),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField ve AlertView Kullanımı"),
      ),
      body: Form(
        key: genelKontrolcu,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (yazi){
                  if (yazi!.isEmpty){
                    return "Lütfen bu kısmı boş bırakmayın";
                  }
                },
                controller: yaziKontrolcusu,
                decoration: const InputDecoration(
                  hintText: "Lütfen adınızı yazınız",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lime,
                  ),
                  onPressed: selamla,
                  child: const Text(
                    "Selamla", style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "badscript",
                  ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}