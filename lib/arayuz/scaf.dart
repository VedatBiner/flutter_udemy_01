import "package:flutter/material.dart";

class ScaffoldOgesi extends StatelessWidget{
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
            onPressed: () => Navigator.pushNamed(context, "/degisenwidget"),
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add_check),
            tooltip: "Repair it",
            onPressed: () => print("Repair it"),
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
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.blue.shade400,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: const Text("Grid Elemanı-01", textAlign: TextAlign.center,),
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
        onTap: (int i ) {
          switch(i){
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
          onTap: (){
            Navigator.pop(context);
            debugPrint("Yan menü tıklandı");
          },
        ),
      ),
    );
  }
}