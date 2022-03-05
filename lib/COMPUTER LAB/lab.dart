import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class computer_lab extends StatefulWidget {
  const computer_lab({Key? key}) : super(key: key);

  @override
  _computer_labState createState() => _computer_labState();
}

class _computer_labState extends State<computer_lab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("COMPUTER LAB"),
        backgroundColor: Colors.indigo,
      ),

        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("COMPUTER LAB",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("BZU SUB CAMPUSE LODHARAN",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/lab.jpg",
                      height: 300.0,
                      width: 300.0,
                    ),
                    Text("DIRECTOR MESSAGE",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.green)
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
