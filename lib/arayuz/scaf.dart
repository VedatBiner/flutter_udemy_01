import "package:flutter/material.dart";
import 'package:flutter_udemy_01/pages/arsiv.dart';
import '../pages/appbarsayfasi.dart';
import '../pages/bilgilendirme.dart';
import '../pages/degerlendirme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScaffoldOgesi extends StatefulWidget{
  const ScaffoldOgesi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ScaffoldStatemiz();
}

class ScaffoldStatemiz extends State<ScaffoldOgesi> {

  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();

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
      default:
        return const ArsivSayfasi();
        break;
    }
  }

  void _ornekfonksiyon(int i){
    // Scaffold'a dışarıdan erişim.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Merhaba snackbar $i"),
      ),
    );
    debugPrint(_keyScaffold.currentState.toString());
  }

  void ornekBottomSheet(){
    _keyScaffold.currentState!.showBottomSheet((BuildContext ctx){
      return Container(
        height: 250,
        color: Colors.amberAccent,
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
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyScaffold,
      backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        title: const Text("My Fancy Dress"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.playlist_play),
            tooltip: "Air it",
            onPressed: () => ornekBottomSheet(),
          ),
         PopupMenuButton(
           onSelected: (secilen){
             int? s = 0;
             s = secilen as int?;
             debugPrint(secilen.toString());
             switch (secilen){
               case 0:
                 _ornekfonksiyon(s!);
                 break;
               case 1:
                 _ornekfonksiyon(s!);
                 break;
               case 2:
                 _ornekfonksiyon(s!);
                 break;
               case 3:
                 _ornekfonksiyon(s!);
                 break;
               default:
                 debugPrint(secilen.toString());
                 break;
             }
           },
           icon: const Icon(Icons.more_vert),
           itemBuilder: (BuildContext context){
             return <PopupMenuEntry>[
               const PopupMenuItem(
                 value: 0,
                 child: ListTile(
                   leading: Icon(Icons.share),
                   title: Text("Paylaş"),
                   ),
               ),
               const PopupMenuItem(
                 value: 1,
                 child: ListTile(
                   leading: Icon(Icons.star),
                   title: Text("Puan Ver"),
                 ),
               ),
               const PopupMenuItem(
                 value: 2,
                 child: ListTile(
                   leading: Icon(Icons.contact_phone),
                   title: Text("İletişim"),
                 ),
               ),
               const PopupMenuItem(
                 value: 3,
                 child: ListTile(
                   leading: Icon(FontAwesomeIcons.addressBook),
                   title: Text("Adres"),
                 ),
               ),
             ];
           },
         ),
        ],
      ),
      body: gecerliSayfa(aktifOge),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: aktifOge,
        selectedItemColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.archive),
            label: "Arşiv",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.announcement),
            label: "Bilgilendirme",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.assessment),
            label: "Değerlendirme",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.wifi),
            label: "Bilgi",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.power_settings_new_sharp),
            label: "Değer",
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
                      title: const Text("App Bar Sayfası"),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const AppBarSayfasi(
                              gelenDeger: "Ana Sayfadan Geldim",
                            ),
                          ),
                        );
                      },
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









