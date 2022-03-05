import 'dart:io';

import 'package:bzu_lodhran_off/contact_us/contact_us.dart';
import 'package:bzu_lodhran_off/screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            IconButton(
              icon: (Image.asset("image/contactus.png",
                  height:70,
                  width: 70,
                  fit: BoxFit.fitWidth)),
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              },
            ),
            ],
          title: Text("About Us"),
          backgroundColor: Colors.indigo,
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() =>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavScreen()),),
              //onPressed:() => exit(0),
            )
        ),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Our Team",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("Developer & Designer",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.indigo[900],fontWeight: FontWeight.bold)),
                    Text("Yasir Javed",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.red)),

                    Text("BZU SUB CAMPUSE LODHARAN",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 120.0,
                      child: ClipRRect(
                        child: Image.asset('image/yy.jpg'),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("About Us",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.green,fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Thank you for choosing the Bahauddin Zakariya University Lodharan Campuse for your academic pursuits. It is one of the nation's leading public research universities. The university is widely known as an institution of strong performance and high ambition as it has continued to make excellent progress towards its goals. It plays a significant role in developing indigenous human resources through its highly productive achievements both in sciences and humanities as it has a variety of disciplines.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 12, color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("I wish you best of luck for your admission plans!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 16, color: Colors.redAccent)
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
