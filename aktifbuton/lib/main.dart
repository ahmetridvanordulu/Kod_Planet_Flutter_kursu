import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Evet());
}

class Evet extends StatefulWidget {
  const Evet({Key? key}) : super(key: key);

  @override
  State<Evet> createState() => _EvetState();
}
class _EvetState extends State<Evet> {

  String yon = "";



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    yon = "Sol";

                  });
                  print(yon);
                },
                child: Container(
                  width: 100,
                  height: 200,
                  color: yon == "Sol" ? Colors.blueAccent : Colors.black ,
                  child: Text(yon == "Sol" ? "Aktif buton" : "Pasif buton",style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    yon = "Sağ";

                  });
                  print(yon);
                },
                child: Container(
                  width: 100,
                  height: 200,
                  child: Text(yon == "Sağ" ? "Aktif buton" : "Pasif buton",style: TextStyle(color: Colors.white,fontSize: 20)),
                  color: yon == "Sağ" ? Colors.blueAccent : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
