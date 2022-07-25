import "package:flutter/material.dart";

class AppBarSayfasi extends StatefulWidget {
  const AppBarSayfasi({Key? key, required this.gelenDeger}) : super(key: key);
  final String gelenDeger;
 // AppBarSayfasi({required this.gelenDeger});

  @override
  State<AppBarSayfasi> createState() => _AppBarSayfasiState();
}

class _AppBarSayfasiState extends State<AppBarSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gelenDeger != null ? widget.gelenDeger : "App Bar Sayfası"),
      ),
      body: Container(
        color: Colors.teal,
      ),
    );
  }
}
