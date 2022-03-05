import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {

  /*void whatsAppOpen() async {
    await FlutterLaunch.launchWathsApp(phone: "923047427068", message: "Hello");
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          /*actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.contact_phone),
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              },
            ),
          ],*/
          title: Text("Contact Us"),
          backgroundColor: Colors.indigo,
        ),
        body: Column(

            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text("Feel Free To Contact Us",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 20, color: Colors.black)),

                      Text("Developer",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 24, color: Colors.indigo[900],fontWeight: FontWeight.bold)),
                      Text("Yasir Javed",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 24, color: Colors.red)),

                      Text("BZU SUB CAMPUSE LODHARAN",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 15, color: Colors.black)),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 120.0,
                        child: ClipRRect(
                          child: Image.asset('image/yy.jpg'),
                          borderRadius: BorderRadius.circular(180.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Text("Thank you for choosing the Bahauddin Zakariya University Lodharan Campuse for your academic pursuits. It is one of the nation's leading public research universities. The university is widely known as an institution of strong performance and high ambition as it has continued to make excellent progress towards its goals. It plays a significant role in developing indigenous human resources through its highly productive achievements both in sciences and humanities as it has a variety of disciplines.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 12, color: Colors.black)),
                      SizedBox(
                        height: 20,
                      ),
                      /*Text("I wish you best of luck for your admission plans!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 16, color: Colors.redAccent)
                      ),*/

                    ],
                  ),
                ),
              ),
              Expanded(

                child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget> [

                      Card(
                        color: Colors.transparent,
                        margin: EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            MapsLauncher.launchQuery ('Mahar Home, Punjab, Pakistan'); // Change Text According To Your Need

                            MapsLauncher.launchCoordinates(
                                30.072828535874685, 71.6886043243258);     },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset("image/map.png",
                                  height:50,
                                  width: 50,
                                  fit: BoxFit.fitWidth,),
                                //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                                Text("Locaton", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                              ],
                            ),
                          ),
                        ),
                      ),

    Card(
    color: Colors.transparent,
    margin: EdgeInsets.all(8.0),
    child: RaisedButton(
    onPressed: () async {
    FlutterPhoneDirectCaller.callNumber("+923047427068");
    },
    splashColor: Colors.blue,
    child: Center(
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    Image.asset("image/phone.png",
    height:50,
    width: 50,
    fit: BoxFit.fitWidth,),
    //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
    Text("Call Us", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
    ],
    ),
    ),
    ),
    ),

    GestureDetector(
      child: Card(
      color: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: RaisedButton(
      onPressed: () {
                       openwhatsapp();
                      //whatsAppOpen();
      //FlutterOpenWhatsapp.sendSingleMessage("923047427068", " ");
      },
      splashColor: Colors.blue,
      child: Center(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
      Image.asset("image/whatsapp.png",
      height:50,
      width: 50,
      fit: BoxFit.fitWidth,),
      //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
      Text("Whatsapp Us", style: new TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold,),)
      ],
      ),
      ),
      ),
      ),
    ),

                    ]

                ),
              )
          ],
        )
    );
  }
  openwhatsapp() async{
    var whatsapp ="+923047427068";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
    ///var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if( await canLaunch(whatsappURl_android)){
      await launch(whatsappURl_android);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("whatsapp no installed")));
    }


  }
}

