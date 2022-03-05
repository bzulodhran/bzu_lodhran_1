import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class dsa extends StatefulWidget {
  const dsa({Key? key}) : super(key: key);

  @override
  _dsaState createState() => _dsaState();
}

class _dsaState extends State<dsa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Director Student Afairs"),
        backgroundColor: Colors.indigo,
      ),

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: [
                  Text("Director",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 25, color: Colors.indigo[900])),
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
                      child: Image.asset(
                        "image/sajid shb.jpg",
                        height: 200.0,
                        width: 300.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Prof. Dr. SAJID NADEEM",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 20, color: Colors.indigo[900])),
                  Text("Assistant Professor(Sociology)",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 12, color: Colors.indigo[900])),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                children: <Widget> [
                  Container(
                    child: Center(
                      child: Column(
                        children: [

                          ClipOval(
                            child: Align(
                              heightFactor: 1,
                              widthFactor: 0.5,
                              child: Image.asset(
                                "image/muzammil.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M.MUZAMIL MEHBOB",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Lecturer(IT)",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 12, color: Colors.indigo[900])),
                          Text("BZU SUB CAMPUSE LODHARAN",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 10, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            "image/bz.png",
                            height: 120.0,
                            width: 150.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MAM MARIYAM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Lecturer(ENG)",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 12, color: Colors.indigo[900])),
                          Text("BZU SUB CAMPUSE LODHARAN",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 10, color: Colors.black)),

                        ],
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),

    );

  }
}
