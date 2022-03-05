// @dart=2.9
import 'package:bzu_lodhran_off/new_login_page/new_screens/new_login_screen.dart';
import 'package:bzu_lodhran_off/screen/bottom_curv_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
Future main(List<String> arg) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();

  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: mainlogin(),
    home: FirebaseAuth.instance.currentUser == null
        ? const loginPage()
        : BottomNavBar(),
  ));
}