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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.gelenDeger != null ? widget.gelenDeger : "App Bar Sayfası"
          ),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.face),
              Icon(Icons.add_comment),
              Icon(Icons.article),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.blue),
            Container(color: Colors.amber),
            Container(color: Colors.red),
          ],
        ),
      ),
    );
  }
}
