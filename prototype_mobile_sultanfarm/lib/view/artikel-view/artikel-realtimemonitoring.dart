import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class artikelRealtimeMonitoring extends StatefulWidget {
  const artikelRealtimeMonitoring({Key? key}) : super(key: key);

  @override
  State<artikelRealtimeMonitoring> createState() =>
      _artikelRealtimeMonitoringState();
}

class _artikelRealtimeMonitoringState extends State<artikelRealtimeMonitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Penjelasan Realtime Monitoring"),
          backgroundColor: Color(0xFFFFAF00),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/artikel/cctv.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Center(
                  child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    "Monitoring adalah layanan yang ditawarkan oleh CV Sultan Farm. Fungsi utama dari penerapan teknologi ini adalah menjamin konidisi kandang agar tetap bersih dan sehat, serta mengawasi keadaan domba. Jika suatu waktu domba mengalami gejala penyakit, ada pencuri dan lain-lain sebagainya maka pengawas dapat memberitahu pengelola supaya segera bertindak.",
                    style: GoogleFonts.getFont(
                      "Poppins",
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )),
            )
          ]),
        ));
  }
}
