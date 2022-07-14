import "package:flutter/material.dart";

class DegisenWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<DegisenWidget>{
  int degisenSayi = 0;
  void sayiyiArtir(){
    setState((){
      degisenSayi++;
    });
  }

  void sayiyiAzalt(){
    setState((){
      degisenSayi--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful - Stateless Dersi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.amberAccent
              ),
              onPressed: sayiyiArtir,
              child: const Text("Sayıyı Arttır"),
            ),
            Text(
              "Değişebilen Sayı : $degisenSayi",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                color: degisenSayi > 0 ? Colors.green : Colors.red
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.red,
                backgroundColor: Colors.amberAccent
              ),
              onPressed: sayiyiAzalt,
              child: const Text("Sayıyı Azalt"),
            ),
          ],
        ),
      ),
    );
  }

}