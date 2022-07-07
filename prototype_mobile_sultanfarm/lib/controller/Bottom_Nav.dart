import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prototype_mobile_sultanfarm/view/Domba.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';
import 'package:prototype_mobile_sultanfarm/view/Profil.dart';
import '../model/ColorPallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int curIndex = 0;
  final List<Widget> body = [Home(), Domba(), Profil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[curIndex],
      bottomNavigationBar: GNav(
          backgroundColor: color_bg,
          color: color_red,
          activeColor: color_utama,
          tabBackgroundColor: Colors.green,
          padding: EdgeInsets.all(15),
          onTabChange: ontap,
          selectedIndex: curIndex,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Beranda',
            ),
            GButton(
              icon: Icons.list,
              text: 'Domba',
            ),
            GButton(
              icon: Icons.man,
              text: 'Profil',
            )
          ]),
    );
  }

  void ontap(int index) {
    setState(() {
      curIndex = index;
    });
  }
}
