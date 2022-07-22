import 'package:flutter/material.dart';
import 'package:prototype_mobile_sultanfarm/view/menu-view/menu-detailRealtime.dart';
import 'package:prototype_mobile_sultanfarm/view/menu-view/menu-realtimemonitoring.dart';

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
      home: menuDetailRealtime(),
    );
  }
}
