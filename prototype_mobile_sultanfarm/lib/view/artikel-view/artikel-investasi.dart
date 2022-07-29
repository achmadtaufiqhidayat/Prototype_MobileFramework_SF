import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class artikelInvestasi extends StatefulWidget {
  const artikelInvestasi({Key? key}) : super(key: key);

  @override
  State<artikelInvestasi> createState() => _artikelInvestasiState();
}

class _artikelInvestasiState extends State<artikelInvestasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Penjelasan Investasi"),
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
                  "assets/images/artikel/rupiah.jpg",
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
                    "Investasi syariah merupakan salah satu jenis investasi yang ada di Indonesia yang menggunakan sistem deposito bagi hasil. \nPada umumnya, proses investasi deposito bagi hasil sama dengan deposito di bank konvensional. Bedanya, deposito syariah tidak mematok keuntungan yang bisa didapatkan investor.\n Agar tidak hanya menjadi label syariah, maka CV Sultan Farm menerapkan Akad Mudharabah, yang mana keuntungan akan dibagi dengan sistem bagi hasil dengan ketentuan yang bisa disepakati atau yang paling umum 60% keuntungan untuk pemilik modal dan 40% keuntungan untuk pengelola",
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
