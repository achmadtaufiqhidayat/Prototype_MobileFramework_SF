import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/view/Akad.dart';
import 'package:prototype_mobile_sultanfarm/view/Profil.dart';
import 'package:url_launcher/url_launcher.dart';

class BreedingPage1 extends StatelessWidget {
  const BreedingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pilihan Paket Breeding",
          style: GoogleFonts.getFont(
            'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFFFAF00),
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0x19FFAF00),
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SecondPage(heroTag: index)));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 275,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                _images[index],
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                "PAKET BREEDING " + _Judul[index].toString(),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                _Harga[index],
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;
  const SecondPage({required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Breeding " + _Judul[heroTag].toString()),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  _images[heroTag],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFAF00),
                    onPrimary: Colors.white,
                    minimumSize: Size(double.infinity, 60),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  child: Text(
                    'Lanjut Investasi',
                    style: GoogleFonts.getFont('Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThirdPage(
                                  heroTag: ThirdPage,
                                )));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final int heroTag;

  const ThirdPage({required this.heroTag});

  var long = 0;
  _lauchW(String url) async {
    // String url ="https://api.whatsapp.com/send/?phone=$nomor?text=$pesan&type=phone_number&app_absent=0";
    await canLaunch(url) ? launch(url) : print("Tidak Bisa Buka WhatsApp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Breeding " + _Judul[heroTag].toString()),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Card(
                    borderOnForeground: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        _images[heroTag],
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Dengan harga " + _Harga[heroTag] + _Deskripsi[heroTag],
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Nama Anda",
                      labelStyle: GoogleFonts.getFont('Poppins',
                          color: Color(0xFFFFAF00), fontSize: 15),
                      hintText: "Nama Lengkap Anda",
                      hintStyle: GoogleFonts.getFont("Poppins",
                          color: Colors.black, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(
                        Icons.person,
                        color: Color(0xFFFFAF00),
                        size: 24,
                      )),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Alamat Anda",
                      labelStyle: GoogleFonts.getFont('Poppins',
                          color: Color(0xFFFFAF00), fontSize: 15),
                      hintText: "Contoh : Jember",
                      hintStyle: GoogleFonts.getFont("Poppins",
                          color: Colors.black, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(
                        Icons.location_on,
                        color: Color(0xFFFFAF00),
                        size: 24,
                      )),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "No Telp",
                      labelStyle: GoogleFonts.getFont('Poppins',
                          color: Color(0xFFFFAF00), fontSize: 15),
                      hintText: "08xxxxxxx",
                      hintStyle: GoogleFonts.getFont("Poppins",
                          color: Colors.black, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(
                        Icons.phone,
                        color: Color(0xFFFFAF00),
                        size: 24,
                      )),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Pengelola",
                      labelStyle: GoogleFonts.getFont('Poppins',
                          color: Color(0xFFFFAF00), fontSize: 15),
                      hintText: "Sultan Farm",
                      hintStyle: GoogleFonts.getFont("Poppins",
                          color: Colors.black, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFFAF00), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(
                        Icons.person,
                        color: Color(0xFFFFAF00),
                        size: 24,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green[900],
                        onPrimary: Colors.white,
                        minimumSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 3),
                    child: Text(
                      "Chat",
                      style: GoogleFonts.getFont("Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onPressed: () {
                      _lauchW(
                          "https://api.whatsapp.com/send/?phone=6285101813779&text=Hallo%2C+saya+ingin+mengetahui+lebih+lanjut+tentang+paket+domba+ini\n+Nama+Paket : Paket Breeding " +
                              _Judul[heroTag] +
                              ", \nHarga : " +
                              _Harga[heroTag] +
                              ", \nSpesifikasi : Dengan harga tersebut " +
                              _Deskripsi[heroTag] +
                              ".%2A&type=phone_number&app_absent=0");
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFAF00),
                        onPrimary: Colors.white,
                        minimumSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 3),
                    child: Text(
                      "Lanjut",
                      style: GoogleFonts.getFont("Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Akad()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<String> _images = [
  'assets/images/paket/paketA.jpg',
  'assets/images/paket/paketB.jpg',
  'assets/images/paket/paketC.jpg'
];
final List<String> _Judul = ['A', 'B', 'C'];
final List<String> _Deskripsi = [
  ", Anda akan mendapatkan 3 domba jantan dan 6 domba betina yang akan dikelola oleh mudharib (pengelola)",
  ", Anda akan mendapatkan 3 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola)",
  ", Anda akan mendapatkan 2 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola)"
];
final List<String> _Harga = ["Rp 10.000.000", "Rp 8.000.000", "Rp 6.000.000"];
