import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(yap());
}

class yap extends StatelessWidget {
  const yap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return yapp();
  }
}

class yapp extends StatefulWidget {
  const yapp({Key? key}) : super(key: key);

  @override
  State<yapp> createState() => _yappState();
}

class _yappState extends State<yapp> {
  final oynatici = AudioPlayer();
  void Cal(String Sarki){
    var xes = AssetSource('$Sarki.wav');
    oynatici.play(xes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  buildDrum("bip",Colors.pink,10),
                  buildDrum("oobah",Colors.green,10),
                  buildDrum("oobah",Colors.green,10),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrum("bongo",Colors.lightGreenAccent,10),
                  buildDrum("how",Colors.deepOrange,10),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrum("bongo",Colors.white30,15),
                  buildDrum("how",Colors.pink,10),
                  // Expanded(
                  //     child: TextButton(
                  //       child: Container(
                  //         color: Colors.blue,
                  //       ),
                  //       onPressed: () {
                  //         Cal('clap3');
                  //       },
                  //     ))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrum("clap3",Colors.pinkAccent,10),
                  buildDrum("clap1",Colors.lightBlueAccent,10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

   Expanded buildDrum(String ses, Color rengim,int flex) {
    return Expanded(
      flex: flex,
                    child: TextButton(
                      child: Container(child: Text("$ses",style: TextStyle(fontSize: 25,color: Colors.white)),
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.5),
                          shape: BoxShape.rectangle,
                          gradient: RadialGradient(
                            colors: [Colors.blue, Colors.pinkAccent, Colors.green],
                            stops: [0.3, 0.6, 0.9],
                            center: Alignment(0, -1),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Cal(ses);
                      },
                    ));
  }
}
