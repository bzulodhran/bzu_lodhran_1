import 'package:bzu_lodhran_off/new_login_page/new_screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'about_uni.dart';
import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var PagesAll = [MyApp(),about_uni(), about(), ProfilePage(),];
  var myindex =0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon((myindex == 0) ? Icons.home_outlined:Icons.home, size: 30),
          Icon((myindex == 1) ? Icons.school_outlined:Icons.school, size: 30),
          Icon((myindex == 2) ? Icons.person_outline:Icons.person, size: 30),
          Icon((myindex == 3) ? Icons.person_pin:Icons.emoji_emotions_outlined, size: 30),
          //Icon((myindex == 3) ? Icons.person_add:Icons.logout, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        //onTap: (index) => setState(() => _currentIndex = index),
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        // animationCurve: Curves.fastLinearToSlowEaseIn, color:Colors.white,
        letIndexChange: (index) => true,
      ),
      body: PagesAll[myindex],
    );
  }
}