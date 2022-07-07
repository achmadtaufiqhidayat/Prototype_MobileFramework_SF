import 'package:prototype_mobile_sultanfarm/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:prototype_mobile_sultanfarm/controller/Bottom_Nav.dart';
import 'package:prototype_mobile_sultanfarm/registerPage.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/domba.jpg',
            ).image,
          ),
        ),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0x4D000000),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/logo.png',
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Sultan Farm',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFFFFAF00),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Platform Investasi Syariah di bidang Peternakan',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'LOGIN',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Color(0xFFFFAF00),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Divider(
                          thickness: 3,
                          indent: 60,
                          endIndent: 60,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Form(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 20, 5, 0),
                                  child: TextFormField(
                                    controller: textController1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'No Handphone',
                                      labelStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Color(0xFFFFAF00),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                      hintText: 'Masukkan nomor handphone',
                                      hintStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFAF00),
                                          width: 5,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFAF00),
                                          width: 5,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xCCFFFFFF),
                                      prefixIcon: Icon(
                                        Icons.phone_iphone_rounded,
                                        color: Color(0xFFFFAF00),
                                        size: 24,
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 10, 5, 0),
                                  child: TextFormField(
                                    controller: textController2,
                                    autofocus: true,
                                    obscureText: !passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Kata Sandi',
                                      labelStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Color(0xFFFFAF00),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                      hintText: 'Masukkan kata sandi',
                                      hintStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFAF00),
                                          width: 5,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFAF00),
                                          width: 5,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xCCFFFFFF),
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        color: Color(0xFFFFAF00),
                                        size: 24,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility =
                                              !passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFFFFAF00),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                // Generated code for this Row Widget...
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 8, 5, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Lupa kata sandi?',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: Color(0xFFFFAF00),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 40, 5, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomNav()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFFFAF00),
                                      onPrimary: Colors.white,
                                      minimumSize: Size(double.infinity, 60),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(8),
                                      ),
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                      elevation: 3,
                                    ),
                                    child: Text(
                                      'LOGIN',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Belum punya akun?',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPageWidget(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Daftar disini!',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFFFFAF00),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
