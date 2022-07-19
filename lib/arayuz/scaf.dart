import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/ana_card.dart';

class ScaffoldOgesi extends StatelessWidget {
  const ScaffoldOgesi({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: Center(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: [
              const AnaCard("/elfeneri", "lake.jpg", "El Feneri Örneği"),
              const AnaCard("/ilksayfa", "lake.jpg", "Tek Tıklama \n İlk sayfaya git"),
              const AnaCard("/imageviews", "lake.jpg", "Çift Tıklama \n ImageViews Sayfasına Git"),
              const AnaCard("/degisenwidget", "lake.jpg", "Uzun basma ile \n değişebilen widget sayfasına git"),
              const AnaCard("/alertvetextfield", "lake.jpg", "TextField Sayfası \n AlertView Sayfasına Git"),
              const AnaCard("/sharedkonusu", "lake.jpg", "Shared Preferences \n Sayfasına Git"),
              const AnaCard("/dosyakonusu", "lake.jpg", "Dosya İşlemleri \n Sayfasına Git"),
              const AnaCard("/jsonkonusu", "lake.jpg", "Basit JSON İşlemleri \n Sayfasına Git"),
              const AnaCard("/localjsonkonusu", "lake.jpg", "Local JSON İşlemleri \n Sayfasına Git"),
              const AnaCard("/basithttp", "lake.jpg", "Basit http İşlemleri \n Sayfasına Git"),
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: "Bu ögeye \n bir defa \n tıkladınız!!!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.yellowAccent,
                    textColor: Colors.indigo,
                  );
                },
                onDoubleTap: () {
                  Fluttertoast.showToast(
                    msg: "Bu ögeye \n iki defa \n tıkladınız!!!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.white,
                    textColor: Colors.indigo,
                  );
                },
                onLongPress: () {
                  Fluttertoast.showToast(
                    msg: "Bu ögeye \n uzun tıkladınız!!!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.TOP,
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.indigo,
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/toast1.jpg"),
                        fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity, //sonsuz kaplama
                      padding: const EdgeInsets.all(8.0),
                      color: const Color(0xCDFFFFDD), // CD değeri transparanlık
                      child: const Text(
                        "Toast Mesajı \n Örnekleri",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Bold font
                        ),
                      ),
                    ),
                  ),
                ),
              ), // Toast mesajı silme

              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-12",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-13",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-14",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-15",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-16",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-17",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-18",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-19",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-20",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-21",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-22",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-23",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-24",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-25",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-26",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-27",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-28",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-29",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-30",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-31",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-32",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-33",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-34",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-35",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-36",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-37",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-38",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-39",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text(
                  "Grid Elemanı-40",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          // child: Text("Merhaba Scaffold"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          switch (i) {
            case 0:
              debugPrint("Tıklanan buton : Arşiv");
              break;
            case 1:
              debugPrint("Tıklanan buton : Bilgilendirme");
              break;
            case 2:
              debugPrint("Tıklanan buton : Değerlendirme");
              break;
            default:
              debugPrint("Tıklanan buton bulunamadı");
              break;
          }
        },
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
