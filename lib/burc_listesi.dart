import 'package:flutter/material.dart';
import 'package:flutterburclar/burc_detay.dart';
import 'package:flutterburclar/models/burc.dart';
import 'package:flutterburclar/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  static List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      String kucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}" + ".png";
      String buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}" + ".png";

      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemCount: tumBurclar.length,
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
    );
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc oAnkiBurc = tumBurclar[index];
    return Card(
      elevation: 4,
      child: ListTile(
        onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>BurcDetay(index))),
        leading: Image.asset(
          "images/" + oAnkiBurc.burcKucukResim,
          width: 64,
          height: 64,
        ),
        title: Text(
          oAnkiBurc.burcAdi,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.pink.shade500,fontSize: 24),
        ),
        subtitle: Text(
          oAnkiBurc.burcTarihi,
          style: TextStyle(
              fontWeight: FontWeight.w200, color: Colors.black,fontSize: 18),
        ),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
      ),
    );
  }
}
