import 'package:flutter/material.dart';
import 'package:flutterburclar/burc_listesi.dart';
import 'package:flutterburclar/models/burc.dart';

class BurcDetay extends StatelessWidget {
  int indeks;
  Burc secilenBurc;

  BurcDetay(this.indeks);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[indeks];
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
