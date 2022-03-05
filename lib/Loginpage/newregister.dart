import 'package:bzu_lodhran_off/Loginpage/mainlogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRegister extends StatefulWidget {
  _NewRegisterState createState() => _NewRegisterState();
}

class _NewRegisterState extends State<NewRegister> {
  final databaseReference = FirebaseDatabase.instance.reference().child("Users");
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  late String textname,textemail,textpassword,textrole='';


  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

void _resetItem(){
  _name.clear();
  _email.clear();
  _password.clear();

}




void _saveItem() async {
  try{
    final newUser = await _auth.createUserWithEmailAndPassword(email: textemail, password: textpassword);
    if (newUser != null){
      final User user = await _auth.currentUser!;
      final userID = user.uid;
      _addUsers(userID);
    }

  } catch(e){
    print(e);
  }

}

  void _addUsers(String ID){
  databaseReference.child(ID).set({
    'name': textname,
    'role': textrole
  });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/register-new.png'), fit: BoxFit.cover),
        ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 30),
            child: Text(
              'Create\nAccount',
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
          ),
      /*Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 30,top: 2),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white), ),

    Padding
    (padding: EdgeInsets.all(10),
    ),*/
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
                    TextFormField(
                      controller: _name,
                      /*decoration: InputDecoration(
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            borderSide: new BorderSide(color: Colors.black)
                        ),
                        labelText: 'Name',
                      ),*/
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(color: Colors.black),),
                        prefixIcon: Padding(
                            padding: EdgeInsets.all( 10.0 ),
                            child:Icon(
                              Icons.person,
                              color:  Colors.black,
                            )
                        ),
                        labelText: 'Username',
                      ),
                      onSaved: (value) {
                        textname = value!;
                      },
                      validator: validateName,
                    ),
                    SizedBox(height: 7.0,),

                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: new BorderSide(color: Colors.black),),
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
                    SizedBox(height: 7.0,),

                    TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: new BorderSide(color: Colors.black),),
                        prefixIcon: Padding(
                            padding: EdgeInsets.all( 10.0 ),
                            child:Icon(
                              Icons.lock,
                              color:  Colors.black,
                            )
                        ),
                        labelText: 'Input Password 6 Chractors',
                      ),
                      onSaved: (value) {
                        textpassword = value!;
                      },
                      validator: validatePassword,
                    ),
                    SizedBox(height: 7.0,),
                    Center(child: Text("Must Select Your Role ☠️",textAlign: TextAlign.left,)),
                    SizedBox(height: 7.0,),
                    DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            borderSide: new BorderSide(color: Colors.black),),
                          prefixIcon: Padding(
                              padding: EdgeInsets.all( 10.0 ),
                              child:Icon(
                                Icons.verified_user,
                                color:  Colors.black,
                              )
                          ),
                          labelText: 'Please Select As User Role',
                        ),
                        value: textrole.isNotEmpty ? textrole : null,
                        items: <String> ['User',]
                            .map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value){
                          setState(() {
                            textrole = value.toString();

                          });
                        }),
                    SizedBox(height: 7.0,),
                    Row(
                      children: [

                        Expanded(
                            child: ElevatedButton(
                              onPressed: (){
                                _resetItem();
                              },
                              child: Text('Reset'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ),),
                        SizedBox(width: 10.0,),
                        Expanded(
                            child: ElevatedButton(
                              onPressed: (){
                                if (_formKey.currentState!.validate()){
                                  _formKey.currentState!.save();
                                  _saveItem();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => mainlogin()));
                                }
                             },
                              child: Text('Submit',),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                        )

                      ],
                    ),
                    TextButton(
                      onPressed:( ) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => mainlogin()));
                      } ,
                      child: Text('Login Into Account'),
                    ),

                  ],
                ),
              )
    ),
    ),
    ),
    )
              ],
            ),
          ),
        );
  }
  String? validateName(String? name){
    if (name!.isEmpty){
      return 'Enter your Name';
    }
    else {
      return null;
    }

  }

  String? validatePassword(String? password) {

    if (password!.isEmpty){
      return 'Enter your Password';
    }
    else {
      return null;
    }

  }

  String? validateEmail(String? email) {
    if (email!.isEmpty){
      return 'Enter your Email';
    }
    else {
      return null;
    }
  }
}

