import 'package:bzu_lodhran_off/admin/admin.dart';
import 'package:bzu_lodhran_off/new_login_page/new_screens/new_signup_screen.dart';
import 'package:bzu_lodhran_off/screen/bottom_nav_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class mainlogin extends StatefulWidget {
  _mainloginState createState() => _mainloginState();
}

class _mainloginState extends State<mainlogin> {

  final _formKey = GlobalKey<FormState>() ;
  late String textemail, textpassword;

  final _auth =  FirebaseAuth.instance;
  final dbRef = FirebaseDatabase.instance.reference().child("Users");

  void _signIn() async {
    try{
      final newUser = await _auth.signInWithEmailAndPassword(email: textemail, password: textpassword);
      if (newUser != null){
        final User user = await _auth.currentUser!;
        final userID = user.uid;
        await FirebaseDatabase.instance
        .reference()
        .child("Users")
        .child(userID)
        .once()
        .then((DataSnapshot snapshot ) {
          setState(() {
            if(snapshot.value['role']=='Admin'){
              Navigator.push(context, MaterialPageRoute(builder: (context) => admin()));


            }
            else if (snapshot.value['role']=='User'){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));

            }
          });

        } );
        //print('success');
      }

      else{
        Text("Incorect Login Details");
        print('fail');
      }

    } catch (e) {
      print(e);
    }

  }



  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/login-new.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
    /*return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
        title: Text('Login Page'),
          centerTitle: true,
    backgroundColor: Colors.indigo,),*/
          body: Center(
            child: Container(
              padding: EdgeInsets.only(left: 35,),
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome To', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),textAlign:TextAlign.left ),
                    Text('Bzu Sub Campuse Lodharan', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),textAlign:TextAlign.left, ),
                    /*Center(
                      child: Container(
                        child: Text('Welcome To', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),textAlign:TextAlign.left ),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text('Bzu Sub Campuse Lodharan', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,),textAlign:TextAlign.left, ),
                      ),
                    ),*/
                    Padding
                      (padding: EdgeInsets.all(10),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),

                          child: SingleChildScrollView(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 43,
                                  ),
                                  Image.asset(
                                    "image/bz.png",
                                    height: 150.0,
                                    width: 200.0,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all( 10.0 ),
                                        child:Icon(
                                          Icons.email,
                                          color:  Colors.black,
                                        )
                                      ),
                                      labelText: 'UserEmail',
                                    ),
                                    onSaved: (value) {
                                      textemail = value!;
                                    },
                                    validator: validateEmail,
                                  ),

                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all( 10.0 ),
                                          child:Icon(
                                            Icons.lock,
                                            color:  Colors.black,
                                          )
                                      ),
                                      labelText: 'Password',
                                    ),
                                    onSaved: (value) {
                                      textpassword = value!;
                                    },
                                    validator: validatePassword,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(
                                          child: ElevatedButton.icon(
                                            label: Text('Login'),
                                            icon: Icon(
                                              Icons.login,
                                              color: Colors.pink,
                                              size: 12.0,
                                            ),
                                            onPressed: (){
                                              if (_formKey.currentState!.validate()){
                                                _formKey.currentState!.save();
                                                _signIn();
                                              }
                                            },

                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.deepPurpleAccent,
                                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                                                textStyle: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold)),
                                          ))
                                    ],
                                  ),

                                  TextButton(
                                      onPressed:( ) {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                                      } ,
                                      child: Text('Create new Account'),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

    String? validateEmail(String? email){
       if (email!.isEmpty){
         return 'Enter Your Email';
       }
       else {
         return null;
       }

    }

  String? validatePassword(String? password){
    if (password!.isEmpty){
      return 'Enter your Pasword';
    }
    else {
      return null;
    }

  }
}