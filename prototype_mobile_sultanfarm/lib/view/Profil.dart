import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_mobile_sultanfarm/model/ColorPallet.dart';
import 'package:flutter/material.dart';
// class Profil extends StatefulWidget {
//   const Profil({Key? key}) : super(key: key);

//   @override
//   State<Profil> createState() => _ProfilState();
// }

// class _ProfilState extends State<Profil> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: ListView(
//           children: <Widget>[
//             Center(
//               child: Container(
//                 // width: 100,
//                 // height: 100,
//                 margin:
//                     EdgeInsets.only(top: 80, bottom: 20, left: 10, right: 10),
//                 child: CircleAvatar(
//                     backgroundImage: AssetImage('/images/man.png'),
//                     backgroundColor: Color(0xFFFFAF00),
//                     maxRadius: 75.0),
//               ),
//             ),
//             Text(
//               'Nama Pengguna',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.getFont('Poppins',
//                   color: Color(0xFFFFAF00),
//                   fontWeight: FontWeight.w600,
//                   fontSize: 24),
//             ),
//             Text(
//               "08xxxxx",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.getFont('Poppins',
//                   color: Color(0xFFFFAF00),
//                   fontWeight: FontWeight.w300,
//                   fontSize: 18),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               color: Color(0xFFFFAF00),
//               child: Text(
//                 "Riwayat Investasi",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.getFont('Poppins',
//                     color: color_bg, fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//               child: Row(
//                 children: <Widget>[
//                   Container(
//                       margin:
//                           EdgeInsets.only(top: 1, bottom: 1, left: 4, right: 4),
//                       child: Padding(padding: EdgeInsets.all(3))),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Konfrmasi",
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.getFont("Poppins",
//                         color: Color(0xFFFFAF00),
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text("Diproses",
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.getFont("Poppins",
//                           color: Color(0xFFFFAF00),
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold)),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text("Selesai",
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.getFont("Poppins",
//                           color: Color(0xFFFFAF00),
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold))
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProfilePage1 extends StatelessWidget {
  const ProfilePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Nama Pengguna",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {},
                        heroTag: 'edit',
                        elevation: 0,
                        label: const Text("EDIT"),
                        icon: const Icon(Icons.edit_rounded),
                      ),
                      const SizedBox(width: 16.0),
                      FloatingActionButton.extended(
                        onPressed: () {},
                        heroTag: 'logout',
                        elevation: 0,
                        backgroundColor: Colors.red,
                        label: const Text("LOGOUT"),
                        icon: const Icon(Icons.logout_rounded),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const _ProfileInfoRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Konfirmasi", 0),
    ProfileInfoItem("Diproses", 0),
    ProfileInfoItem("Selesai", 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Row(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(child: _singleItem(context, item)),
                  ],
                )))
            .toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFFFFAF00), Color(0xFFFFAF000)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn-icons.flaticon.com/png/512/4140/premium/4140047.png?token=exp=1657597510~hmac=d3307ee26ea3a997456791624d8a6935'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
