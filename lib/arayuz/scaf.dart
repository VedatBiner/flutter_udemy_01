import "package:flutter/material.dart";

class ScaffoldOgesi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fancy Dress"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.playlist_play),
            tooltip: "Air it",
            onPressed: () => print("Air it"),
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add),
            tooltip: "Restrict it",
            onPressed: () => print("Restrict it"),
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add_check),
            tooltip: "Repair it",
            onPressed: () => print("Repair it"),
          ),
        ],
      ),
      body: const Center(
        child: Text("Merhaba Scaffold"),
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
        onTap: (int i ) => debugPrint("Tıklanan butonun indeksi : $i"),
      ),
    );
  }
}