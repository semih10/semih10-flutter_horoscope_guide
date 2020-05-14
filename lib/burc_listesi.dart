import 'package:flutter/material.dart';
import 'package:flutterburclar/models/burc.dart';
import 'package:flutterburclar/utils/strings.dart';


class BurcListesi extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<Burc> tumBurclar=veriKaynaginiHazirla();
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: Container(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar=[];

    for(int i=0;i<12;i++){
      String kucukResim=Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}"+".png";
      String buyukResim=Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk"+"${i+1}"+".png";

      Burc eklenecekBurc=Burc(Strings.BURC_ADLARI[i],Strings.BURC_TARIHLERI[i],Strings.BURC_GENEL_OZELLIKLERI[i]
          ,kucukResim,buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  
}
