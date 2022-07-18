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
      backgroundColor: Color(0x19FFAF00),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Card(
                  child: Image.asset(
                    'assets/images/domba/domba-lokal.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Text("Foto Ternak Hari Ini",
                    style: GoogleFonts.getFont("Poppins",
                        fontSize: 15, color: Colors.black))
              ],
            ),
            Card(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text("Jumlah Domba : ",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black)),
                  Text("10 Ekor",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black))
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Kondisi : ",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black)),
                  Text("Sudah Diberi Pakan",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black))
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Sudah Dirawat : ",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black)),
                  Text("1 Bulan",
                      style: GoogleFonts.getFont("Poppins",
                          fontSize: 15, color: Colors.black))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
