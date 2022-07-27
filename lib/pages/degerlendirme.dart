import "package:flutter/material.dart";
import 'package:rive/rive.dart';

class DegerlendirmeSayfasi extends StatelessWidget{
  const DegerlendirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Değerlendirme Sayfası"),
      ),
      body: const Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: RiveAnimation.asset(
            "assets/animations/robot-x.riv",
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
