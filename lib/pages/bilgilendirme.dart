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
          child: YaziHareket(),
        ),
      ),
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
    return Container(
      child: Text(
        "Bilgilendirme Sayfası",
        style: TextStyle(
          fontSize: 8 + _animation.value * 25,
        ),
      ),
    );
  }
}

