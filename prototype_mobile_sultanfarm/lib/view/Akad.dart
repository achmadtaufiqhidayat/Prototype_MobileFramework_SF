import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/controller/navBottom.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cool_alert/cool_alert.dart';

class Akad extends StatefulWidget {
  const Akad({Key? key}) : super(key: key);

  @override
  State<Akad> createState() => _AkadState();
}

class _AkadState extends State<Akad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akad Paket Breeding"),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5)),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFFFFAF00),
                child: Text(
                  "Perhatikan paket breeding pilihan anda untuk melakukan akad, kemudian tekan tombol chat dibawah ini untuk menghubungi admin lalu mengatur jadwal untuk melaksanakan akad melalui panggilan video",
                  style: GoogleFonts.getFont("Poppins",
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.greenAccent,
                elevation: 3,
                minimumSize: Size(double.infinity, 60),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'WhatsApp',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}

_lauchW(String url) async {
  // String url ="https://api.whatsapp.com/send/?phone=$nomor?text=$pesan&type=phone_number&app_absent=0";
  await canLaunch(url) ? launch(url) : print("Tidak Bisa Buka WhatsApp");
}
