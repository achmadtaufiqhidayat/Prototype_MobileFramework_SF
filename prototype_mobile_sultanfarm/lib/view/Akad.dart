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
                  "Perhatikan paket breeding pilihan anda untuk melakukan akad, kemudian tekan gambar microphone dan ucapkan kalimat akad berikut dan sebut nama paket sesuai pilihan anda:. ",
                  style: GoogleFonts.getFont("Poppins",
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "“Bismillahirrahmanirrahiim. Saya berniat melakukan investasi Paket Breeding A/B/C di CV Sultan farm dengan akad mudharabah. Akad saya ucapkan tanpa adanya paksaan dan tekanan dari pihak manapun, serta saya sadar akan seluruh konsekuensi dari akad investasi ini“.",
                  style: GoogleFonts.getFont("Poppins",
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic_sharp),
                    iconSize: 120,
                    color: Color(0xFFFFAF00),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text("Ulangi",
                  //       style: GoogleFonts.getFont("Poppins",
                  //           fontSize: 14, fontWeight: FontWeight.bold)),
                  //   style: ElevatedButton.styleFrom(
                  //       primary: Color(0xFFFFAF00),
                  //       onPrimary: Colors.white,
                  //       minimumSize: Size(100, 50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       elevation: 3),
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  // Text(
                  //   "Jika sudah yakin, lakukan pembayaran pada nomor berikut\n 932-1642-8264-5783.\nKemudian kirimkan bukti pembayaran.",
                  //   style: GoogleFonts.getFont("Poppins",
                  //       color: Colors.black, fontSize: 16),
                  //   textAlign: TextAlign.center,
                  // ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Ulangi",
                          style: GoogleFonts.getFont("Poppins",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFAF00),
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 3),
                      ),
                      // ElevatedButton(
                      //     onPressed: () {
                      //       _lauchW(
                      //           "https://api.whatsapp.com/send/?phone=6285101813779&text=Hallo %2C+ Saya ingin mengkonfirmasi pembayaran.%2A&type=phone_number&app_absent=0");
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //         primary: Colors.green[900],
                      //         onPrimary: Colors.white,
                      //         minimumSize: Size(100, 50),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //         ),
                      //         elevation: 3),
                      //     child: Text(
                      //       "Konfirmasi",
                      //       style: GoogleFonts.getFont("Poppins",
                      //           color: Colors.white,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 20),
                      //     )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          CoolAlert.show(
                              backgroundColor: Color(0xFFFFAF00),
                              context: context,
                              type: CoolAlertType.confirm,
                              title: "Anda Yakin?",
                              text:
                                  "Jika sudah yakin, lakukan pembayaran pada rekening berikut\n 932-1642-8264-5783.\n Kemudian kirimkan bukti pembayaran melalui WhatsApp.\nTunggu transaksi anda dikonfirmasi dan pantau di menu Monitoring",
                              onConfirmBtnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => navBottom()));
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[900],
                            onPrimary: Colors.white,
                            minimumSize: Size(100, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 3),
                        child: Text(
                          "Selesai",
                          style: GoogleFonts.getFont("Poppins",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
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
