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
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const YaziHareket(),
            KalpAtisi(),
          ]
        ),
      ),
    );
  }
}

class KalpAtisi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return KalpAtisiState();
  }
}

class KalpAtisiState extends State<KalpAtisi> with SingleTickerProviderStateMixin{

  late AnimationController _animasyoncu;
  late Animation<double> _animasyon;

  @override
  void initState(){
    super.initState();
    _animasyoncu = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
    );
    _animasyon = CurvedAnimation(
        parent: _animasyoncu,
        curve: Curves.elasticInOut)
          ..addListener(() => setState(() {
            debugPrint(_animasyon.value.toString());
          }))
          ..addStatusListener((durum) {
            debugPrint(durum.toString());
          });
        _animasyoncu.repeat();
  }

  @override
  void dispose(){
    _animasyoncu.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: Colors.red,
      size: 60.0 + _animasyon.value * 40,
    );
  }

}

class YaziHareket extends StatefulWidget {
  const YaziHareket({Key? key}) : super(key: key);

  @override
  State<YaziHareket> createState() => _YaziHareketState();
}

class _YaziHareketState extends State<YaziHareket> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int durum = 0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this // vsync : ekran içindeki hareketleri takip ediyor.
    );
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut)
          ..addListener(() => setState(() {}))
          ..addStatusListener((durum){
            debugPrint(durum.toString());
          }
        );
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Text(
        "Kalp Atışı Animasyonu",
        style: TextStyle(
          fontSize: 8 + _animation.value * 25,
        ),
      ),
    );
  }
}

