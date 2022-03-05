//import 'package:demo/admin/it_up/it_fee_up.dart';
//import 'package:demo/admin/it_up/it_outlines_up.dart';
//import 'package:demo/admin/it_up/it_timetable_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'pa_fee_up.dart';
import 'pa_outlines_up.dart';
import 'pa_timetable_up.dart';

class pa_up extends StatefulWidget {
  const pa_up({Key? key}) : super(key: key);

  @override
  _pa_upState createState() => _pa_upState();
}

class _pa_upState extends State<pa_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("PA UPLOADS"),
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
                    MaterialPageRoute(builder: (context) =>pa_outlines_up()),
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
                     // Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("PA OUTLINES UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>pa_fee_up()),
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
                      Text("PA FEE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>pa_timetable_up()),
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
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("PA TIMETABLE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
