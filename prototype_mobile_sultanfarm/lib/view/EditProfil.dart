import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class editProf extends StatefulWidget {
  @override
  State<editProf> createState() => _editProfState();
}

class _editProfState extends State<editProf> {
  int iduser = 0;
  var controllerNama = TextEditingController();
  var controllerEmail = TextEditingController();
  var controllerAlamat = TextEditingController();
  var controllerNohp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Edit Profil",
          style: GoogleFonts.getFont(
            'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Color(0xFFFFAF00),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            SizedBox(height: 25.0),
            // Container(
            //   height: 50,
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(5),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.shade300,
            //           blurRadius: 1,
            //           offset: Offset(0, 2),
            //         )
            //       ]),
            //   child: Row(
            //     children: [
            //       Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(
            //                 right: 10.0, left: 10.0, top: 12.5, bottom: 12.5),
            //             child: Icon(Icons.perm_identity_sharp,
            //                 color: Colors.black, size: 25),
            //           ),
            //         ],
            //       ),
            //       // Text.rich(
            //       //   TextSpan(
            //       //     text: iduser.toString(),
            //       //     // style: defaultText.headline6
            //       //     //     ?.apply(color: Color.fromRGBO(68, 93, 192, 1.0)),
            //       //   ),
            //       // ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 25.0),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: TextFormField(
                controller: controllerNama,
                keyboardType: TextInputType.text,
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.account_box_outlined,
                    color: Color(0xFFFFAF00),
                  ),
                  hintText: 'Nama Lengkap',
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  // hintStyle: defaultText.subtitle1
                  //     ?.apply(color: Colors.grey.shade500),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            // Container(
            //   height: 50,
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(5),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.shade300,
            //           blurRadius: 1,
            //           offset: Offset(0, 2),
            //         )
            //       ]),
            //   child: TextField(
            //     controller: controllerEmail,
            //     keyboardType: TextInputType.emailAddress,
            //     style: TextStyle(color: Colors.black),
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //       contentPadding: EdgeInsets.only(top: 14),
            //       prefixIcon: Icon(
            //         Icons.email_outlined,
            //         color: Colors.black,
            //       ),
            //       hintText: 'abcdef@example.com',
            //       // hintStyle: defaultText.subtitle1
            //       //     ?.apply(color: Colors.grey.shade500),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 15.0),
            // Container(
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(5),
            //     boxShadow: [
            //       BoxShadow(
            //           color: Colors.grey.shade300,
            //           blurRadius: 1,
            //           offset: Offset(0, 2))
            //     ],
            //   ),
            //   height: 50,
            //   child: TextField(
            //     controller: controllerPassword,
            //     obscureText: true,
            //     style: TextStyle(color: color_font),
            //     decoration: InputDecoration(
            //         border: InputBorder.none,
            //         contentPadding: EdgeInsets.only(top: 14),
            //         prefixIcon: Icon(
            //           Icons.vpn_key,
            //           color: color_font,
            //         ),
            //         hintText: "Password",
            //         hintStyle: defaultText.subtitle1
            //             ?.apply(color: Colors.grey.shade500)),
            //   ),
            // ),
            SizedBox(height: 15.0),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: TextField(
                controller: controllerNohp,
                keyboardType: TextInputType.text,
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xFFFFAF00),
                  ),
                  hintText: '08xxxxxxxxx',
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  // hintStyle: defaultText.subtitle1
                  //     ?.apply(color: Colors.grey.shade500),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: TextField(
                controller: controllerAlamat,
                keyboardType: TextInputType.text,
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFFFFAF00),
                  ),
                  hintText: 'Alamat Lengkap',
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  // hintStyle: defaultText.subtitle1
                  //     ?.apply(color: Colors.grey.shade500),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              width: 150,
              child: RaisedButton(
                onPressed: () {
                  editProf();
                  // Navigator.of(context).push(new MaterialPageRoute(
                  //     builder: (BuildContext context) => BottomNav()));
                },
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Color(0xFFFFAF00),
                padding: EdgeInsets.all(20),
                child: Text(
                  "Simpan",
                  style: GoogleFonts.getFont("Poppins",
                      fontWeight: FontWeight.bold, color: Colors.white),
                  //  style: defaultText.headline5?.apply(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: color_background,
    );
  }
}
