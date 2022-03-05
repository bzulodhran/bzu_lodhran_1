import 'package:bzu_lodhran_off/Administration/administration.dart';
import 'package:bzu_lodhran_off/COMPUTER%20LAB/lab.dart';
import 'package:bzu_lodhran_off/Departments/departments.dart';
import 'package:bzu_lodhran_off/Directorate/directorate.dart';
import 'package:bzu_lodhran_off/LIBRARY/library.dart';
import 'package:bzu_lodhran_off/SCHOLORSHIPS/scholorships.dart';
import 'package:bzu_lodhran_off/admin/admin.dart';
import 'package:bzu_lodhran_off/admission/admission.dart';
import 'package:bzu_lodhran_off/dsa/dsa.dart';
import 'package:bzu_lodhran_off/examination%20incharge/examination.dart';
import 'package:bzu_lodhran_off/faculty/faculty.dart';
import 'package:bzu_lodhran_off/firebase/pdf/pdf.dart';
import 'package:bzu_lodhran_off/new_login_page/new_screens/new_login_screen.dart';
import 'package:bzu_lodhran_off/new_login_page/new_screens/profile_screen.dart';
import 'package:bzu_lodhran_off/notifications/notification.dart';
import 'package:bzu_lodhran_off/security%20system/security.dart';
import 'package:bzu_lodhran_off/transport/transport.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  User? user;
  DatabaseReference? referenc;

  @override
  void initState() {
    // TODO: implement initState

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      referenc =
          FirebaseDatabase.instance.reference().child('task').child(user!.uid);
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
            icon: (Image.asset("image/notifi.png",
              height:30,
              width: 30,
              fit: BoxFit.fitWidth)),
            //icon: const Icon(Icons.notifications_active_outlined),
            //iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notification()),
              );
            },
          ),
        ],
        title: Text("BZU LODHRAN OFFICIAL "),
        backgroundColor: Colors.indigo,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("YASIR JAVED", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
              accountEmail: new Text("BS-IT-17-58 (2017-2021)"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("image/y.jpg"),
              ),
              decoration: new BoxDecoration(color: Colors.indigo),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: RichText(
                text: new TextSpan(
                  children: [
                    /* WidgetSpan(
                child: Icon(Icons.language, size: 25),
              ),*/
                    new TextSpan(
                      text: 'Profile',
                      style: new TextStyle(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const ProfilePage();
                            },
                          ));
                        },
                    ),
                  ],
                ),),
            ),

            ListTile(
              leading: Icon(Icons.facebook),
              title: RichText(
                text: new TextSpan(
                  children: [
                    /* WidgetSpan(
                child: Icon(Icons.language, size: 25),
              ),*/
                    new TextSpan(
                      text: 'Yasir Javed',
                      style: new TextStyle(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.facebook.com/equran.hub.7');
                        },
                    ),
                  ],
                ),),
            ),

            ListTile(
              leading: Icon(Icons.language),
              title: RichText(
                text: new TextSpan(
                  children: [
                    /* WidgetSpan(
                child: Icon(Icons.language, size: 25),
              ),*/
                    new TextSpan(
                      text: 'bzu.edu.pk',
                      style: new TextStyle(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.bzu.edu.pk/');
                        },
                    ),
                  ],
                ),),
            ),
            ListTile(
              leading: Icon(Icons.send_to_mobile),
              title: RichText(
                text: new TextSpan(
                  children: [
                    /* WidgetSpan(
                child: Icon(Icons.language, size: 25),
              ),*/
                    new TextSpan(
                      text: 'Whatsapp Us',
                      style: new TextStyle(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          openwhatsapp();
                        },
                    ),
                  ],
                ),),
            ),

            ListTile(
              leading: Icon(Icons.call),
              title: Text("+923047427068"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("maharyasirjaved.bzu@gmail.com"),
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: RichText(
                text: new TextSpan(
                  children: [
                    /* WidgetSpan(
                child: Icon(Icons.language, size: 25),
              ),*/
                    new TextSpan(
                      text: 'LogOut',
                      style: new TextStyle(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          showDialog(
                            barrierDismissible: false,

                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: const Color.fromRGBO(66, 74, 96, 17),
                              content: Text(
                                'Are You sure want to Logout..?',
                                style: GoogleFonts.alike(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text(
                                'Confirmation..!',
                                style: GoogleFonts.alike(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          FirebaseAuth.instance.signOut();
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                const loginPage(),
                                              ));
                                        },
                                        child: Text(
                                          'Yes',
                                          style: GoogleFonts.alike(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'No',
                                        style: GoogleFonts.alike(
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                    ),
                  ],
                ),),
            ),

            TextButton(
              onPressed:( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => admin()));
              } ,
              child: Text('admin'),
            ),


          ],
        ),
      ),
      //backgroundColor: Color(0xFF25116a),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bzuld.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        padding: EdgeInsets.all(5.0),

        child:Column(
children: <Widget>[

  Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      height: 30.0,
      child: Marquee(
        text: 'Welcome To BZU Sub Campus Lodhran',
        style: TextStyle(fontWeight: FontWeight.bold),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 30.0,
        velocity: 50.0,
        // pauseAfterRound: Duration(seconds: 1),
        //startPadding: 10.0,
        //accelerationDuration: Duration(seconds: 1),
        //accelerationCurve: Curves.linear,
        //decelerationDuration: Duration(milliseconds: 500),
        //decelerationCurve: Curves.easeOut,
      )

  ),

        Expanded(child: GridView.count(

          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => directorate()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/boss.png",
                      height:100,
                      width: 100,
                          fit: BoxFit.fitWidth,),
                   //   Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("Directorate", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => faculty()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/faculty.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.groups_outlined,size: 70.0,color: Colors.green,),
                      Text("Faculty", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => administration()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/admin.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.people,size: 70.0,color: Colors.green,),
                      Text("Admin", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => pdf()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/prospectus.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.groups_outlined,size: 70.0,color: Colors.green,),
                      Text("Prospectus", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => departments()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/depart.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.school_outlined,size: 70.0,color: Colors.green,),
                      Text("Departments", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => computer_lab()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/clab.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.phonelink_outlined,size: 70.0,color: Colors.green,),
                      Text("Computer Lab", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => library_bzu()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/libr.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.book_outlined,size: 70.0,color: Colors.green,),
                      Text("Library", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => dsa()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/dsa.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.gavel_outlined,size: 70.0,color: Colors.green,),
                      Text("DSA", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => security()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/security.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.security_outlined,size: 70.0,color: Colors.green,),
                      Text("Security System", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => examination()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/exam.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.note_alt_outlined,size: 70.0,color: Colors.green,),
                      Text("Examination Incharges", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => transport()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/transport.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.commute_outlined,size: 70.0,color:Colors.green,),
                      Text("Transport System", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => scholorships()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/scholarship.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.attach_money_outlined,size: 70.0,color: Colors.green,),
                      Text("Scholorships", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => admission()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/admission.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                      Text("Admission List", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),

          ],),),
        ],
        ),
      ),
    );
  }
  openwhatsapp() async {
    var whatsapp = "+923047427068";
    var whatsappURlAndroid = "whatsapp://send?phone=" + whatsapp +
        "&text=hello";
    if (await canLaunch(whatsappURlAndroid)) {
      await launch(whatsappURlAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("whatsapp no installed")));
    }
  }
}
