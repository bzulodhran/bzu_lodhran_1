import 'package:bzu_lodhran_off/Departments/programs/pa/pa%20Outline/eng_OUTLINE_SEMESTER_WISE/pa_7th.dart';
import 'package:bzu_lodhran_off/Departments/programs/pa/pa%20fee/pa_fee.dart';
import 'package:bzu_lodhran_off/Departments/programs/pa/pa_timetable_SEMESTER_WISE/pa_7th_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class pa_7th_info extends StatefulWidget {
  const pa_7th_info({Key? key}) : super(key: key);

  @override
  _pa_7th_infoState createState() => _pa_7th_infoState();
}

class _pa_7th_infoState extends State<pa_7th_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Public Department"),
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
                    MaterialPageRoute(builder: (context) => pa_7th()),
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
                    MaterialPageRoute(builder: (context) => pa_fee()),
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
                    MaterialPageRoute(builder: (context) => pa_7th_time()),
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
