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
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThirdPage(
                                  tigaTag: heroTag,
                                )));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  final int tigaTag;

  const ThirdPage({Key? key, required this.tigaTag}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState(this.tigaTag);
}

class _ThirdPageState extends State<ThirdPage> {
  final int tigaTag;

  _ThirdPageState(this.tigaTag);

  _lauchW(String url) async {
    // String url ="https://api.whatsapp.com/send/?phone=$nomor?text=$pesan&type=phone_number&app_absent=0";
    await canLaunch(url) ? launch(url) : print("Tidak Bisa Buka WhatsApp");
  }

  TextEditingController textController1 = new TextEditingController();
  TextEditingController textController2 = new TextEditingController();
  TextEditingController textController3 = new TextEditingController();
  TextEditingController textController4 = new TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Breeding " + _Judul[tigaTag].toString()),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Isi Data Diri',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Container(
                  width: double.infinity,
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: textController1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            labelStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: Color(0xFFFFAF00),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            hintText: 'Masukkan nama anda',
                            hintStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFFAF00),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFFAF00),
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFFFFAF00),
                              size: 25,
                            ),
                          ),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'NIK',
                              labelStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFFFAF00),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              hintText: 'Masukkan nik ktp anda',
                              hintStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.numbers_rounded,
                                color: Color(0xFFFFAF00),
                                size: 25,
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Alamat',
                              labelStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFFFAF00),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              hintText: 'Masukkan alamat anda',
                              hintStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.maps_home_work_rounded,
                                color: Color(0xFFFFAF00),
                                size: 25,
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Nomor Handphone',
                              labelStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFFFAF00),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              hintText: 'Masukkan nomor handphone anda',
                              hintStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFFAF00),
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.mobile_friendly_rounded,
                                color: Color(0xFFFFAF00),
                                size: 25,
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFAF00),
                              onPrimary: Colors.white,
                              elevation: 3,
                              minimumSize: Size(double.infinity, 60),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Simpan Data',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 10),
                          child: Text(
                            'Klik tombol lanjut dibawah ini setelah melakukan pengisian dan menyimpanan data untuk melanjutkan akad',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFAF00),
                              onPrimary: Colors.white,
                              elevation: 3,
                              minimumSize: Size(double.infinity, 60),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Lanjut',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Akad()));
                            },
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

final List<String> _images = [
  'assets/images/paket/paketA.jpg',
  'assets/images/paket/paketB.jpg',
  'assets/images/paket/paketC.jpg'
];
final List<String> _Judul = ['A', 'B', 'C'];
final List<String> _Deskripsi = [
  ", Anda akan mendapatkan 3 domba jantan dan 6 domba betina yang akan dikelola oleh mudharib (pengelola) yang akan dikelola selama 1 tahun",
  ", Anda akan mendapatkan 3 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola) yang akan dikelola selama 1 tahun",
  ", Anda akan mendapatkan 2 domba jantan dan 4 domba betina yang akan dikelola oleh mudharib (pengelola) yang akan dikelola selama 1 tahun"
];
final List<String> _Harga = ["Rp 10.000.000", "Rp 8.000.000", "Rp 6.000.000"];
