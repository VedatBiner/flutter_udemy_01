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
         PopupMenuButton(
           icon: const Icon(Icons.more_vert),
           itemBuilder: (BuildContext context){
             return <PopupMenuEntry>[
               const PopupMenuItem(
                 child: ListTile(
                   leading: Icon(Icons.share),
                   title: Text("Paylaş"),
                   ),
               ),
               const PopupMenuItem(
                 child: ListTile(
                   leading: Icon(Icons.star),
                   title: Text("Puan Ver"),
                 ),
               ),
               const PopupMenuItem(
                 child: ListTile(
                   leading: Icon(Icons.contact_phone),
                   title: Text("İletişim"),
                 ),
               ),
             ];
           },
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
      drawer: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120.0, // menü genişliği
                width: double.maxFinite, // genişlik ne kadarsa gidilsin
                color: Colors.blueAccent.shade200,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FlutterLogo(size: 60.0,),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.place),
                      title: const Text("Yerlerimiz"),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () => Navigator.pop(context),
                    ),
                    const Divider(
                      height: 1.0,
                      color: Colors.indigoAccent,
                    ),
                    ListTile(
                      leading: const Icon(Icons.access_alarm),
                      title: const Text("Alarmlar"),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () => Navigator.pop(context),
                    ),
                    const Divider(
                      height: 1.0,
                      color: Colors.indigoAccent,
                    ),
                    ListTile(
                      leading: const Icon(Icons.android),
                      title: const Text("Uygulamalarımız"),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () => Navigator.pop(context),
                    ),
                    const Divider(
                      height: 1.0,
                      color: Colors.indigoAccent,
                    ),
                      ExpansionTile(
                      leading: const Icon(Icons.adjust),
                      title: const Text("Hakkımızda"),
                      trailing: const Icon(Icons.arrow_right),
                      children: [
                        ListTile(
                          title: const Text("Biz kimiz"),
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                          title: const Text("Sertifikalarımız"),
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                          title: const Text("Misyonumuz"),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}









