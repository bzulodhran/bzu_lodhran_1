import 'package:bzu_lodhran_off/admin/eng_up/eng_outline/eng_4th_outline_up.dart';
import 'package:bzu_lodhran_off/admin/eng_up/eng_timetable/eng_4th_time_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../eng_fee_up.dart';

class eng_4th_up extends StatefulWidget {
  const eng_4th_up({Key? key}) : super(key: key);

  @override
  _eng_4th_upState createState() => _eng_4th_upState();
}

class _eng_4th_upState extends State<eng_4th_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("IT 4th UPLOADS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>eng_4th_outline_up()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/outline.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("IT OUTLINES UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>eng_fee_up()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/fee.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("IT FEE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>eng_4th_time_up()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/time.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      // Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("IT TIMETABLE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
