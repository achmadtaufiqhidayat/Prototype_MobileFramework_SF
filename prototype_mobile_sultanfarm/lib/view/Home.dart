import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/view/artikel-view/artikel-investasi.dart';
import 'package:prototype_mobile_sultanfarm/view/artikel-view/artikel-paketbreeding.dart';
import 'package:prototype_mobile_sultanfarm/view/artikel-view/artikel-realtimemonitoring.dart';
import 'package:prototype_mobile_sultanfarm/view/detail-view/detail-jenisdomba.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0x19FFAF00),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFAF00),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/logo.png',
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Sultan Farm',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Text(
                          'Pusat Investasi Peternakan Domba Terbaik di Jember',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Color(0xFFFFAF00),
                          unselectedLabelColor: Color(0x7FFFAF00),
                          labelStyle: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          indicatorColor: Color(0xFFFFAF00),
                          tabs: [
                            Tab(
                              text: 'Jenis Domba',
                            ),
                            Tab(
                              text: 'Artikel Singkat',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-batur.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        detailJenisDomba()));
                                                      },
                                                      child: Text(
                                                        'Batur',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-texel.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Texel',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-sopas.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Sopas',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-merino.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Merino',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-dormas-super.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Dormas Super',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-crossing-dormas.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Crossing Dormas',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-lokal.jpg',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Lokal',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Container(
                                              width: 160,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/domba/domba-crossing-lokal.png',
                                                    width: double.infinity,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Crossing Lokal',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary:
                                                            Color(0xffffaf00),
                                                        onPrimary: Colors.white,
                                                        minimumSize: Size(
                                                            double.infinity,
                                                            40),
                                                        shape:
                                                            new RoundedRectangleBorder(
                                                          borderRadius:
                                                              new BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    8),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    8),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: ListView.builder(
                                  itemCount: _images.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: Color(0xFFF5F5F5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              secondPage(
                                                                  heroTag:
                                                                      index)));
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        child: Image.asset(
                                                          _images[index],
                                                          width:
                                                              double.infinity,
                                                          height: 200,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 0),
                                                        child: Text(
                                                          _Judul[index]
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  const secondPage({Key? key, required this.heroTag}) : super(key: key);
  final int heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

final List<String> _images = [
  'assets/images/paket/paketA.jpg',
  'assets/images/paket/paketB.jpg',
  'assets/images/paket/paketC.jpg'
];
final List<String> _Judul = [
  'Artikel Paket Breeding',
  'Artikel Investasi Syariah',
  'Artikel Realtime Monitoring',
];
final List<String> _Deskripsi = [
  "Paket Breeding adalah paket domba yang ditawarkan oleh CV Sultan Farm kepada para calon pelanggan untuk mendapatkan domba berkualitas dengan harga yang terjangkau dan lebih hemat dari membeli domba per sautan. Keuntungan lain dari paket breeding adalah pembelian paket ini selain ditujukan untuk konsumsi, domba dari paket breeding yang dipilih dapat dirawat atau dikelola sampai beranak binak dan hasil atau keuntungan dari penjualan anak domba ini akan dibagi dua antara investor dan pengelola, untuk mengetahui lebih detail tentang pembagian ini silahkan baca artikel selanjutnya tentang Investasi Syariah.",
  "Investasi syariah merupakan salah satu jenis investasi yang ada di Indonesia yang menggunakan sistem deposito bagi hasil. \nPada umumnya, proses investasi deposito bagi hasil sama dengan deposito di bank konvensional. Bedanya, deposito syariah tidak mematok keuntungan yang bisa didapatkan investor.\n Agar tidak hanya menjadi label syariah, maka CV Sultan Farm menerapkan Akad Mudharabah, yang mana keuntungan akan dibagi dengan sistem bagi hasil dengan ketentuan yang bisa disepakati atau yang paling umum 60% keuntungan untuk pemilik modal dan 40% keuntungan untuk pengelola",
  "Monitoring adalah layanan yang ditawarkan oleh CV Sultan Farm. Fungsi utama dari penerapan teknologi ini adalah menjamin konidisi kandang agar tetap bersih dan sehat, serta mengawasi keadaan domba. Jika suatu waktu domba mengalami gejala penyakit, ada pencuri dan lain-lain sebagainya maka pengawas dapat memberitahu pengelola supaya segera bertindak.",
];
