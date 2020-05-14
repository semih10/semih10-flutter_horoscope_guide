import 'package:flutter/material.dart';
import 'package:flutterburclar/burc_listesi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Burç Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: BurcListesi(),

    );
  }

}
