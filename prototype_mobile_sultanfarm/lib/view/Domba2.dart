import 'package:flutter/material.dart';

class Domba2 extends StatefulWidget {
  const Domba2({Key? key}) : super(key: key);

  @override
  State<Domba2> createState() => _Domba2State();
}

class _Domba2State extends State<Domba2> {
  String? _JenisKelamin;
  final List<String> _jk = [
    'Jenis Kelamin',
    'Jantan',
    'Betina',
  ];

  String? _JenisDomba;
  final List<String> _jd = [
    'Jenis Domba',
    'Lokal Dormus',
    'Lokal',
    'Campuran',
  ];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
