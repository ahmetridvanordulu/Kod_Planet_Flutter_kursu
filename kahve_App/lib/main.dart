import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(Came());
}

class Came extends StatelessWidget {
  const Came({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'eveq'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.brown,
                  backgroundImage: AssetImage(
                      'images/D0_1Y8wQfXQuKshusNeIVXBQwZN0oS2FdBFu-mtkWGo.webp'),
                ),
                Text(
                  "Deneme",
                  style: GoogleFonts.akronim(
                      fontSize: 35, color: Colors.white),
                ),

                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 23,
                  ),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.black,
                  child: Row(
                    children: [
                      Icon(Icons.email,size: 50,color: Colors.white,),
                      SizedBox(width: 23,),
                      Text("ahmet@outlook.com",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings_cell,color: Colors.white,size: 50),
                      SizedBox(width: 60,),
                      Text("05236577318",style: TextStyle(fontSize: 20,color: Colors.yellowAccent),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
