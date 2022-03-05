import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class security extends StatefulWidget {
  const security({Key? key}) : super(key: key);

  @override
  _securityState createState() => _securityState();
}

class _securityState extends State<security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Security"),
        backgroundColor: Colors.indigo,
      ),

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: [
                  Text("SECURITY OFFICER",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 25, color: Colors.indigo[900])),
                  Text("BZU SUB CAMPUSE LODHARAN",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 15, color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "image/bz.png",
                    height: 200.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("PROF. TANVEER BAIGH",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 20, color: Colors.indigo[900])),
                  Text("Assistant Professor(ENG)",
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
                                "image/mustaqem.jpeg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M.MUSTAQEEM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Security Gard",
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
                          ClipOval(
                            child: Align(
                              heightFactor: 1,
                              widthFactor: 0.5,
                              child: Image.asset(
                                "image/akram.jpeg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("RANA AKRAM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Security Gard",
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
