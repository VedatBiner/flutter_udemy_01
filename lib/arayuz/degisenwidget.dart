import "package:flutter/material.dart";

class DegisenWidget extends StatelessWidget{
  const DegisenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Konusu",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<HomePage>{
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
              onPressed: sayiyiAzalt,
              child: const Text("Sayıyı Azalt"),
            ),
          ],
        ),
      ),
    );
  }

}