import "package:flutter/material.dart";
import 'package:flutter_udemy_01/arayuz/alervetext.dart';
import 'package:flutter_udemy_01/arayuz/ilksayfa.dart';
import 'package:flutter_udemy_01/arayuz/imageviews.dart';
import 'package:flutter_udemy_01/arayuz/scaf.dart';
import 'arayuz/degisenwidget.dart';
import 'arayuz/hello.dart';
import 'arayuz/jsonkonusu.dat.dart';
import 'arayuz/sharedkonusu.dart';
import 'arayuz/dosyaislemleri.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => ScaffoldOgesi(),
      "/ilksayfa": (context) => const IlkSayfa(),
      "/degisenwidget": (context) => DegisenWidget(),
      "/hello": (context) => const Hello(),
      "/imageviews": (context) => ImageViews(),
      "/alertvetextfield": (context) => AlertVeTextField(),
      "/sharedkonusu": (context) => const SharedKonusu(),
      "/dosyakonusu": (context) => DosyaIslemleri(kayitislemi: KayitIslemleri(),),
      "/jsonkonusu": (context) => JsonKonusu(),
    },
  ),
  );
}
