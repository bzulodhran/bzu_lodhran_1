import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class administration extends StatefulWidget {
  const administration({Key? key} ) : super(key: key);

  @override
  _administrationState createState() => _administrationState();
}

class _administrationState extends State<administration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Bzu Lodhran Administration"),
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
                        width: 250.0,
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
                              "image/sideq.jpeg",
                              height: 120.0,
                              width: 150.0,
                            ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M. SADIEQ",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Junior Clerk",
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
                                "image/qasim.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M. QASIM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Junior Clerk",
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
                                "image/khaliq.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M. KHALIQ",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Lab Attendent",
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
                                "image/waseem.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("M. WASEEM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Naib Qasid",
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
                          Text("M. AFZAL",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("Swepper",
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
