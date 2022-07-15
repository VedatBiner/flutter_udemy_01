import "package:flutter/material.dart";
import 'package:flutter_udemy_01/arayuz/ilksayfa.dart';
import 'package:flutter_udemy_01/arayuz/imageviews.dart';
import 'package:flutter_udemy_01/arayuz/scaf.dart';
import 'arayuz/degisenwidget.dart';
import 'arayuz/hello.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => ScaffoldOgesi(),
      "/ilksayfa": (context) => IlkSayfa(),
      "/degisenwidget": (context) => DegisenWidget(),
      "/hello": (context) => Hello(),
      "/imageviews": (context) => ImageViews(),

    },
  ),
  );
}