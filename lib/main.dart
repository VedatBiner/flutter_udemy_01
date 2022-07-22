import "package:flutter/material.dart";
import 'package:flutter_udemy_01/arayuz/alertvetext.dart';
import 'package:flutter_udemy_01/arayuz/basithttp.dart';
import 'package:flutter_udemy_01/arayuz/elfeneri.dart';
import 'package:flutter_udemy_01/arayuz/ilksayfa.dart';
import 'package:flutter_udemy_01/arayuz/imageviews.dart';
import 'package:flutter_udemy_01/arayuz/scaf.dart';
import 'package:flutter_udemy_01/veritabani/vtanasayfa.dart';
import 'arayuz/degisenwidget.dart';
import 'arayuz/hello.dart';
import 'arayuz/jsonkonusu.dart';
import 'arayuz/localjsonkonusu.dart';
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
      "/localjsonkonusu": (context) => LocalJsonKonusu(),
      "/basithttp": (context) => BasitHttp(),
      "/elfeneri": (context) => ElFeneri(),
      "/vtanasayfa": (context) => VtAnasayfa(),
    },
    /*
    theme: ThemeData(
      fontFamily: "allerta",
    ),
    */
  ),
  );
}
