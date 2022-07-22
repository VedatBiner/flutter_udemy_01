import "package:flutter/material.dart";

class DegerlendirmeSayfasi extends StatelessWidget{
  const DegerlendirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Değerlendirme Sayfası"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text("Değerlendirme Sayfası"),
        ),
      ),
    );
  }

}