import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class artikelPaketBreeding extends StatefulWidget {
  const artikelPaketBreeding({Key? key}) : super(key: key);

  @override
  State<artikelPaketBreeding> createState() => _artikelPaketBreedingState();
}

class _artikelPaketBreedingState extends State<artikelPaketBreeding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Penjelasan Paket Breeding"),
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
                  "assets/images/artikel/breeding2.jpg",
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
                    "Paket Breeding adalah paket domba yang ditawarkan oleh CV Sultan Farm kepada para calon pelanggan untuk mendapatkan domba berkualitas dengan harga yang terjangkau dan lebih hemat dari membeli domba per sautan. Keuntungan lain dari paket breeding adalah pembelian paket ini selain ditujukan untuk konsumsi, domba dari paket breeding yang dipilih dapat dirawat atau dikelola sampai beranak binak dan hasil atau keuntungan dari penjualan anak domba ini akan dibagi dua antara investor dan pengelola, untuk mengetahui lebih detail tentang pembagian ini silahkan baca artikel selanjutnya tentang Investasi Syariah.",
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
