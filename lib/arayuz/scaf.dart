import "package:flutter/material.dart";
import 'package:flutter_udemy_01/pages/arsiv.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../pages/bilgilendirme.dart';
import '../pages/degerlendirme.dart';
import '../widgets/ana_card.dart';

class ScaffoldOgesi extends StatefulWidget{
  const ScaffoldOgesi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ScaffoldState();
}

class ScaffoldState extends State<ScaffoldOgesi> {
  int aktifOge = 0;
  gecerliSayfa(int aktif){
    switch (aktif){
      case 0:
        return const ArsivSayfasi();
        break;
      case 1:
        return const BilgilendirmeSayfasi();
        break;
      case 2:
        return const DegerlendirmeSayfasi();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        title: const Text("My Fancy Dress"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.playlist_play),
            tooltip: "Air it",
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add),
            tooltip: "Restrict it",
            onPressed: () => Navigator.pushNamed(context, "/hello"),
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add_check),
            tooltip: "Repair it",
            onPressed: () => Navigator.pushNamed(context, "/degisenwidget"),
          ),
        ],
      ),
      body: gecerliSayfa(aktifOge),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: aktifOge,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: "Arşiv",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: "Bilgilendirme",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: "Değerlendirme",
          ),
        ],
        onTap: (int i) {
          aktifOge = i;
          setState(() {
          });
          }
      ),
      drawer: Drawer(
        child: ListTile(
          leading: const Icon(Icons.change_history),
          title: const Text("Change History"),
          onTap: () {
            Navigator.pop(context);
            debugPrint("Yan menü tıklandı");
          },
        ),
      ),
    );
  }
}
