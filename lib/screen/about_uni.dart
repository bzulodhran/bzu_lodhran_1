import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';


class about_uni extends StatefulWidget {
  const about_uni({Key? key}) : super(key: key);

  @override
  _about_uniState createState() => _about_uniState();
}

class _about_uniState extends State<about_uni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            actions: <Widget>[
            ],
            title: Text("About University"),
            backgroundColor: Colors.indigo,
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
        ),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text("BZU SUB CAMPUSE LODHARAN",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.green)),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 120.0,
                      child: ClipRRect(
                        child: Image.asset('image/bz.png'),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Text("Lodhran is a city about 80 km away in the southern side of Multan and is the headquarter of District in the Punjab Province of Pakistan."
                        " The city is located on the northern side of river Satluj."
                        " In its north, the Districts of Multan and Khanewal are located while in its East side is neighbored by Vehari where as Bahawalpur is on its southern side and West side is bordered by Jalalpur Peer Wala (District Multan). "
                        "District Lodhran is spread over an area of 1,790 square kilometers comprising of following three Tehsils: Lodhran, Dunyapur and KahrorPakka."
                        "Lodhran City had no University Campuses and only two colleges both for men. "
                        "The Lodhran city has many higher secondary schools and private colleges. "
                        "Sensing the dire need of quality education in the District, Bahauddin Zakariya University’s Sub Campus at Lodhran was announced by the Honorable Chief Minister of Punjab on 11th of November, 2017."
                        " This Campus will serve the Lodhran District area and out of District Area in future to produce skilled and professional people (INSHA ALLAH).",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 12, color: Colors.black)),
                    SizedBox(
                      height: 10,
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
