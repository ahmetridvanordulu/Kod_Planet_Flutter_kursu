import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(benimUygulamam());
}

class benimUygulamam extends StatelessWidget {
  const benimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text("Bugün ne yiyeceğiz",
              style: TextStyle(color: Colors.purple)),
        ),
        body: yemeksayfasi(),
      ),
    );
  }
}

class yemeksayfasi extends StatefulWidget {
  @override
  State<yemeksayfasi> createState() => _yemeksayfasiState();
}

class _yemeksayfasiState extends State<yemeksayfasi> {
  int corbanosu = 1;
  int bulgur = 1;
  int tatli = 1;

  List<String> CorbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Yoğurt çorbası",
    "Düğün çorbası"
  ];

  List<String> bulgurlar = [
    "Muzlu bulgur",
    "Kerevizli bulgur",
    "Elmalı bulgur",
    "Havuçlu",
    "Tuzlu"
  ];

  List<String> tatlilar = [
    "Sütlaç",
    "Süpangle",
    "Ekmek kadayıfı"
    "Fındıklı"
    "Limonlu"
  ];

  void rastgele() {
    setState(() {
      tatli = Random().nextInt(5) + 1;
      bulgur = Random().nextInt(5) + 1;
      corbanosu = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.cyan),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: rastgele,
                child: Image.asset('images/corba_$corbanosu.jpg')),
          )),
          Text(CorbaAdlari[corbanosu-1], style: TextStyle(fontSize: 20)),
          Container(
              width: 100,
              child: Divider(
                color: Colors.red,
                height: 10,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.limeAccent),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: rastgele,
                child: Image.asset('images/yemek_$bulgur.jpg')),
          )),
          Text(bulgurlar[bulgur-1],style: TextStyle(fontSize: 20)),
          Container(
            width: 100,
              child: Divider(color: Colors.blue,height: 10,),),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    overlayColor: MaterialStateProperty.all(Colors.green)),
                onPressed: rastgele,
                child: Image.asset('images/tatli_$tatli.jpg')),
          )),
          Text(tatlilar[tatli-1],style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
