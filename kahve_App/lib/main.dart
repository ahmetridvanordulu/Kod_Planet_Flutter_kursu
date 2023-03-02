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
                  style: GoogleFonts.akronim(fontSize: 35, color: Colors.white),
                ),
                Container(
                  width: 270,
                    child:
                    Divider(height: 30,color: Colors.white,)
                ),
                Card(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.yellowAccent,
                      ),
                      title: Text("ahmet@outlook.com",style: TextStyle(color: Colors.red,fontSize: 20.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Card(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.yellowAccent,
                      ),
                      title: Text("054312723",style: TextStyle(color: Colors.red,fontSize: 20.0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Card(
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  child: ListTile(
                     leading: Icon(
                         Icons.confirmation_num_sharp,
                         color: Colors.black
                     ),
                    title: Text("Selam",style: TextStyle(fontSize: 30)),
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

/*
Row(

children: [
Icon(Icons.settings_cell,color: Colors.white,size: 50),
SizedBox(width: 60,),
Text("05236577318",style: TextStyle(fontSize: 20,color: Colors.yellowAccent),)
],
),

 */
