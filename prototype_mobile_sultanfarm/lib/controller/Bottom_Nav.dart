import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  final List<Widget> body = [Home(), Domba(), ProfilePage1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[curIndex],
      bottomNavigationBar: Container(
        color: Colors.grey.shade700,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              backgroundColor: Colors.grey.shade700,
              color: Colors.white,
              activeColor: Colors.black,
              tabBackgroundColor: Color(0xFFFFAF00),
              padding: EdgeInsets.all(17),
              onTabChange: ontap,
              selectedIndex: curIndex,
              gap: 8,
              tabs: [
                GButton(
                  icon: Icons.home_rounded,
                  text: 'Beranda',
                  textStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                GButton(
                  icon: Icons.local_convenience_store,
                  text: 'Domba',
                  textStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                GButton(
                  icon: Icons.man_rounded,
                  text: 'Profil',
                  textStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ]),
        ),
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      curIndex = index;
    });
  }
}
