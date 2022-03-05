import 'package:bzu_lodhran_off/Departments/programs/sociology/socio%20fee/socio_fee.dart';
import 'package:bzu_lodhran_off/Departments/programs/sociology/socio_OUTLINE_SEMESTER_WISE/socio_3rd.dart';
import 'package:bzu_lodhran_off/Departments/programs/sociology/socio_timetable_SEMESTER_WISE/socio_3rd_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class socio_3rd_info extends StatefulWidget {
  const socio_3rd_info({Key? key}) : super(key: key);

  @override
  _socio_3rd_infoState createState() => _socio_3rd_infoState();
}

class _socio_3rd_infoState extends State<socio_3rd_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("socio Department"),
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
                    MaterialPageRoute(builder: (context) => socio_3rd()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/outline.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.auto_stories_outlined,size: 70.0,color: Colors.green,),
                      Text("Course Outline", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => socio_fee()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/fee.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.inventory_outlined,size: 70.0,color: Colors.green,),
                      Text("Fees Schedule", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => socio_3rd_time()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/time.png",
                        height:150,
                        width: 150,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.receipt_outlined,size: 70.0,color: Colors.green,),
                      Text("Time Table", style: new TextStyle(color: Colors.black,fontSize: 17.0,fontWeight: FontWeight.bold,),)
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
