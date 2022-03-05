import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class directorate extends StatefulWidget {
  const directorate({Key? key}) : super(key: key);

  @override
  _directorateState createState() => _directorateState();
}

class _directorateState extends State<directorate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Director Bzu Lodhran"),
        backgroundColor: Colors.indigo,
      ),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("DIRECTOR",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),
                    Text("Ch Sajid Nadeem",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.indigo[900])),

                    Text("BZU SUB CAMPUSE LODHARAN",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    ClipOval(
                      child: Align(
                        heightFactor: 1,
                        widthFactor: 0.5,
                        //child: Image.network('https://equranhub.com/wp-content/uploads/2021/04/Ramadan-food.jpg')
                        child: Image.asset (
                          "image/sajid shb.jpg",
                          height: 250.0,
                          width: 350.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
