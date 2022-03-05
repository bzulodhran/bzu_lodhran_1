//import 'package:demo/admin/socio_up/socio_fee_up.dart';
//import 'package:demo/admin/socio_up/socio_outlines_up.dart';
import 'package:bzu_lodhran_off/admin/socio_up/socio_fee_up.dart';
import 'package:bzu_lodhran_off/admin/socio_up/socio_outlines_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'socio_timetable_up.dart';
class socio_up extends StatefulWidget {
  const socio_up({Key? key}) : super(key: key);

  @override
  _socio_upState createState() => _socio_upState();
}

class _socio_upState extends State<socio_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("SOCIOLOGY UPLOADS"),
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
                    MaterialPageRoute(builder: (context) =>socio_outlines_up()),
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
                      Text("SOCIOLOGY OUTLINES UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>socio_fee_up()),
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
                      Text("SOCIOLOGY FEE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>socio_timetable_up()),
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
                      Text("SOCIOLOGY TIMETABLE UPLOAD HERE", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
