import 'package:bzu_lodhran_off/Departments/programs/english/eng%20Outline/eng_SEMESTERS/eng_semesters.dart';
import 'package:bzu_lodhran_off/Departments/programs/information/IT%20Outline/IT_SEMESTERS/it_semesters.dart';
import 'package:bzu_lodhran_off/Departments/programs/pa/pa_SEMESTERS/pa_semesters.dart';
import 'package:bzu_lodhran_off/Departments/programs/sociology/socio_SEMESTERS/socio_semesters.dart';
import 'package:flutter/material.dart';
void main(List<String> arg) {
  runApp(new MaterialApp(
    home: departments(),
  ));
}
class departments extends StatefulWidget {
  const departments({Key? key}) : super(key: key);

  @override
  _departmentsState createState() => _departmentsState();
}

class _departmentsState extends State<departments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: Text("Departments"),
        backgroundColor: Colors.indigo,
      ),
      //backgroundColor: Color(0xFF25116a),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bzuld.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => it_semesters()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/it.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.laptop_mac,size: 70.0,color: Colors.green,),
                      Text("Information Technology", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => eng_semesters()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/eng.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.menu_book_outlined,size: 70.0,color: Colors.green,),
                      Text("English", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => socio_semesters()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/socio.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.public_outlined,size: 70.0,color: Colors.green,),
                      Text("Sociology", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pa_semesters()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/pa.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.hail_outlined,size: 70.0,color: Colors.green,),
                      Text("Public Administration", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),
          ],),
      ),

    );
  }
}
