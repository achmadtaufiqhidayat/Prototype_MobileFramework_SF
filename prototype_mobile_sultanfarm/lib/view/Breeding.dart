import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/view/Profil.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilihan Paket Breeding"),
        backgroundColor: Color(0xFFFFAF00),
      ),
      backgroundColor: Color(0xFFFFAF00),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Breeding " + _Judul[heroTag].toString()),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: Image.asset(_images[heroTag]),
              ),
            ),
          ),
          Expanded(
            child: Text("Paket " + _Judul[heroTag].toString()),
          ),
        ],
      ),
    );
  }
}

final List<String> _images = [
  'assets/images/domba.jpg',
  'assets/images/slider1.jpg',
  'assets/images/slider2.jpg'
];
final List<String> _Judul = ['A', 'B', 'C'];
final List<String> _Deskripsi = [];
