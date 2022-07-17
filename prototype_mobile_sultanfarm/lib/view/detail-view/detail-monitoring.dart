import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/view/menu-view/menu-realtimemonitoring.dart';

class detailMonitoring extends StatefulWidget {
  const detailMonitoring({Key? key}) : super(key: key);

  @override
  State<detailMonitoring> createState() => _detailMonitoringState();
}

class _detailMonitoringState extends State<detailMonitoring> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAF00),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => menuRealtimeMonitoring()));
          },
        ),
        title: Text(
          'Monitoring Domba',
          style: GoogleFonts.getFont(
            'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
    );
  }
}
