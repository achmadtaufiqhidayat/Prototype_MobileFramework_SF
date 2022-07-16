import 'package:flutter/material.dart';
import 'package:prototype_mobile_sultanfarm/controller/Bottom_Nav.dart';
import 'package:prototype_mobile_sultanfarm/controller/navBottom.dart';
import 'package:prototype_mobile_sultanfarm/loginPage.dart';
import 'package:prototype_mobile_sultanfarm/view/Domba.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';
import 'package:prototype_mobile_sultanfarm/view/Profil.dart';
import 'package:prototype_mobile_sultanfarm/view/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sultan Farm',
      home: SplashScreen(),
    );
  }
}
