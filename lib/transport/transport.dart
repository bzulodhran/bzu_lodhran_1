import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class transport extends StatefulWidget {
  const transport({Key? key}) : super(key: key);

  @override
  _transportState createState() => _transportState();
}

class _transportState extends State<transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Transport System"),
        backgroundColor: Colors.indigo,
      ),

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: [
                  Text("TRANSPORT OFFICER",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 23, color: Colors.indigo[900])),
                  Text("BZU SUB CAMPUSE LODHARAN",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 13, color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  ClipOval(
                    child: Align(
                      heightFactor: 1,
                      widthFactor: 0.5,
                      child: Image.asset(
                        "image/siraj.jpeg",
                        height: 250.0,
                        width: 300.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("M. SIRAJ",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 25, color: Colors.indigo[900])),
                  Text("Lecturer(Sociology)",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 12, color: Colors.indigo[900])),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
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
                        "image/shabeer.jpeg",
                        height: 120.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("MAHAR SHABEER",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 16, color: Colors.indigo[900])),

                  Text("Driver",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 12, color: Colors.indigo[900])),
                  Text("BZU SUB CAMPUSE LODHARAN",
                      style: GoogleFonts.fredokaOne(
                          fontSize: 10, color: Colors.black)),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
