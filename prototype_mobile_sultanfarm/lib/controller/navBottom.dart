import 'package:flutter/material.dart';
import 'package:prototype_mobile_sultanfarm/view/Domba.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';
import 'package:prototype_mobile_sultanfarm/view/Profil.dart';

class navBottom extends StatefulWidget {
  const navBottom({Key? key}) : super(key: key);

  @override
  State<navBottom> createState() => _navBottomState();
}

class _navBottomState extends State<navBottom> {
  int _selectedIndex = 0;
  final List<Widget> screens = [Home(), Domba(), ProfilePage1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xffffaf00),
          unselectedItemColor: const Color(0xff757575),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: _navBarItems),
    );
  }
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home_rounded),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.pets_outlined),
    activeIcon: Icon(Icons.pets_rounded),
    label: 'Domba',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_outline_rounded),
    activeIcon: Icon(Icons.person_rounded),
    label: 'Profile',
  ),
];