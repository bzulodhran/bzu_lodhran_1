import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class faculty extends StatefulWidget {
  const faculty({Key? key}) : super(key: key);

  @override
  _facultyState createState() => _facultyState();
}

class _facultyState extends State<faculty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Bzu Lodhran Faculty"),
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
                                "image/kamran.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("PROF. KAMRAN QADIR",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("Assistant Professor(IT)",
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
                                "image/tanveer.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("TANVEER BAIGH",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("Assistant Professor(ENG)",
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
                                "image/muzammil.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MUZAMIL MEHBOB",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("LECTURER(IT)",
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
                                "image/usman.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MUHAMMAD USMAN",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("LECTURER(IT)",
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
                                "image/akash.jpg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MUHAMMAD AKASH",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 16, color: Colors.indigo[900])),
                          Text("LECTURER(ENG)",
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
                                "image/mariam.jpeg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MAM MARIYAM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("LECTURER(ENG)",
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
                                "image/siraj.jpeg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MUHAMMAD SIRAJ",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("LECTURER(SOCIOLOGY)",
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
                                "image/shabnam.jpeg",
                                height: 120.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MAM SHABNAM",
                              style: GoogleFonts.fredokaOne(
                                  fontSize: 14, color: Colors.indigo[900])),
                          Text("LECTURER(SOCIOLOGY)",
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

