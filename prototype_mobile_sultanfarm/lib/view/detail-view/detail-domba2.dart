import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/view/Domba.dart';
import 'package:prototype_mobile_sultanfarm/view/detail-view/detail-jenisdomba.dart';
import 'package:url_launcher/url_launcher.dart';

class detailDomba2 extends StatefulWidget {
  const detailDomba2({Key? key}) : super(key: key);

  @override
  State<detailDomba2> createState() => _detailDomba2State();
}

class _detailDomba2State extends State<detailDomba2> {
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
                context, MaterialPageRoute(builder: (context) => Domba()));
          },
        ),
        title: Text(
          'Batur',
          style: GoogleFonts.getFont(
            'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      // Generated code for this Column Widget...
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/domba/domba-batur.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Text(
                  'Batur',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Generated code for this Row Widget...
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Text(
                        'Bobot : 13 Kg\nUmur : 2 Bulan\nJenis Kelamin : Jantan',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _lauchW(
                          "https://api.whatsapp.com/send/?phone=6285101813779&text=Hallo %2C+ Saya ingin mengetahui lebih lanjut tentang domba-domba di Sultanfarm.%2A&type=phone_number&app_absent=0");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      minimumSize: Size(130, 50),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8),
                      ),
                      side: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                      elevation: 2,
                    ),
                    child: Text(
                      'Chat WhatsApp',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Text(
                  'Artikel Singkat',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Text(
                  'Domba batur merupakan hasil persilangan antara domba merino dengan domba ekor tipis dengan sebaran asli geografis di Kecamatan Batur dan sekitarnya, yang secara turun-temurun dikembangkan masyarakat dan menjadi milik masyarakat Kabupaten Banjarnegara, Provinsi Jawa Tengah',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/domba/domba-batur2.jpeg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Text(
                  'Domba batur mempunyai ciri khas yang tidak dimiliki oleh domba dari bangsa lainnnya dan merupakan sumber daya genetik ternak Indonesia yang perlu dijaga dan dipelihara kelestariannya sehingga dapat memberikan manfaat dalam peningkatan kesejahteraan dan kemakmuran rakyat Indonesia.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_lauchW(String url) async {
  // String url ="https://api.whatsapp.com/send/?phone=$nomor?text=$pesan&type=phone_number&app_absent=0";
  await canLaunch(url) ? launch(url) : print("Tidak Bisa Buka WhatsApp");
}
