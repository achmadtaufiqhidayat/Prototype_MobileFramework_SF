import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/controller/navBottom.dart';
import 'package:prototype_mobile_sultanfarm/view/Home.dart';
import 'package:prototype_mobile_sultanfarm/view/detail-view/detail-monitoring.dart';

class menuRealtimeMonitoring extends StatefulWidget {
  const menuRealtimeMonitoring({Key? key}) : super(key: key);

  @override
  State<menuRealtimeMonitoring> createState() => _menuRealtimeMonitoringState();
}

class _menuRealtimeMonitoringState extends State<menuRealtimeMonitoring> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAF00),
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_rounded,
        //     color: Colors.white,
        //     size: 30,
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => navBottom()));
        //   },
        // ),
        title: Text(
          'Realtime Monitoring',
          style: GoogleFonts.getFont(
            'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0x1AFFAF00),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    'Sultan Farm',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFFC6C6C6),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/bg_loginregister.jpg',
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            'Paket Breeding Sultan',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            'Paket Breeding A',
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'Rp 10.000.000',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          detailMonitoring()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xFFFFAF00),
                                              onPrimary: Colors.white,
                                              minimumSize: Size(130, 50),
                                              shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        8),
                                              ),
                                              side: BorderSide(
                                                color: Colors.transparent,
                                                width: 0,
                                              ),
                                              elevation: 2,
                                            ),
                                            child: Text(
                                              'Monitoring Domba',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                              ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
