import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'contact.dart';
import 'media.dart';
import 'web.dart';
import 'videoplayer.dart';
//import 'livetv.dart';


void main() { runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Color(0xfffdd329),
    accentColor: Color(0xfffcb127),
    canvasColor: Colors.white,
  ),
  //home: IspApp(),
    initialRoute: '/',
  routes: {
    '/': (_) => IspApp(),
    '/contact': (_) => Contacts(),
    '/media': (_) => media(),
   // '/liveTv': (_) => LiveTv(),
    '/bill': (_) => CarouselDemo(),
    '/video': (_) => ServerVideo(),
  }
));}


