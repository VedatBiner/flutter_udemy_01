import "package:flutter/material.dart";

class BilgilendirmeSayfasi extends StatelessWidget {
  const BilgilendirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bilgilendirme Sayfası"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: const Center(
          child: Text("Bilgilendirme Sayfası"),
        ),
      ),
    );
  }
}
