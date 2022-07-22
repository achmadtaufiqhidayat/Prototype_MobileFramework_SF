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
      body: Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
              itemCount: _images.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //         right: 10, left: 10, bottom: 0.1, top: 0.1)),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.black,
                      color: Color(0xFFFFAF00),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SecondPage(heroTag: index)));
                        },
                        child: Container(
                          child: Column(children: <Widget>[
                            Image.asset(
                              _images[index],
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              "Paket Breeding " + _Judul[index].toString(),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;
  const SecondPage({required this.heroTag});

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
  'assets/images/slider/paketA.jpg',
  'assets/images/slider/paketB.jpg',
  'assets/images/slider/paketC.jpg'
];
final List<String> _Judul = ['A', 'B', 'C'];
final List<String> _Deskripsi = [
  ", Anda akan mendapatkan 3 domba jantan dan 6 domba betina yang akan dikelola oleh mudharib (pengelola)",
  ", Anda akan mendapatkan 3 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola)",
  ", Anda akan mendapatkan 2 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola)"
];
final List<String> _Harga = ["Rp 10.000.000", "Rp 8.000.000", "Rp 6.000.000"];
