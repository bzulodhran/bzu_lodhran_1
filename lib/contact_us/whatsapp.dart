import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
/*class whatsapp extends StatelessWidget {
void launchwhatsapp({@required number, @required message}) async {
  String url = "whatsapp://send?phone=$number&text=$message";
  await canLaunch(url) ? launch(url) : print("can't open whatsapp");
}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
class whatsapp extends StatefulWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  _whatsappState createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
           // openwhatsapp();
          },
          child: Container(
            padding: EdgeInsets.all(40),
            child: Text(" contact US"),
          ),
        ),

      ),
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


