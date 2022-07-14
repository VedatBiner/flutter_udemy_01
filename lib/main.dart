import "package:flutter/material.dart";
import 'package:flutter_udemy_01/arayuz/ilksayfa.dart';
import 'package:flutter_udemy_01/arayuz/scaf.dart';
import 'arayuz/degisenwidget.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => ScaffoldOgesi(),
      "/ilksayfa": (context) => IlkSayfa(),
      "/degisenwidget": (context) => DegisenWidget()
    },
  ),
  );
}