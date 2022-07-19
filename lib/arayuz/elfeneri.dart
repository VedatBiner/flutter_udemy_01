import "package:flutter/material.dart";
import "dart:async";
import 'package:torch_control/torch_control.dart';

class ElFeneri extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FenerState();
}

class FenerState extends State<ElFeneri>{
  bool torchReady = false; // flash var mı?
  bool _flashVarMi = false;
  bool _acikMi = false;
  double _siddet = 1.0;
  String lamba = "ampul-off" , btn = "Aç";

  @override
  void initState() {
    super.initState();
    ilkAcilis();
  }

  ilkAcilis() async {
    bool flashVarMi = await TorchControl.ready();
    setState(() {
      _flashVarMi = flashVarMi;
    });
  }

  Future _feneriAc() async {
    if (_acikMi) {
      TorchControl.turnOff().whenComplete(checkState);
      lamba = "ampul-off";
      btn = "AÇ";
    } else {
      TorchControl.turnOn().whenComplete(checkState);
      lamba = "ampul-on";
      btn = "KAPAT";
    }
    var v = await TorchControl.ready();
    setState(() {
      _flashVarMi = v;
      _acikMi = !_acikMi;
    });
  }

  void checkState() {
    setState(() {});
  }

  Future feneriAc() async {
    if (_acikMi){
      TorchControl.turnOff().whenComplete(checkState);
      lamba = "ampul-off";
      btn = "Aç";
    } else {
      TorchControl.turnOn().whenComplete(checkState);
      lamba = "ampul-on";
      btn = "Kapat";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("El Feneri"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/$lamba.png"),
            ElevatedButton(
              onPressed: _feneriAc,
              child: Text("Feneri $btn"),
            ),
          ],
        ),
      ),
    );
  }

}
