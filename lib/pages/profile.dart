import "package:flutter/material.dart";
import "package:tes_app/fontstyle.dart";

import "package:tes_app/myflutter_app.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          shape: Border.all(color: Colors.white),
          // leading: Text('Profil'),
          title: Row(
            children: [
              Text(
                'Profil',
                style: mainHsi1,
              ),
              Spacer(),
              Text(
                'v.2308-0401',
                style: subHsi14,
              ),
            ],
          )
          // actions: Text('asdasdf')
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 55,
                // padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.2,
                  ),
                )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/hsi.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'Prapta Radikalta',
                          style: mainHsi1,
                        ),
                        Text(
                          'ARN 202 - 03018',
                          style: mainHsi2,
                        ),
                      ],
                    ),
                    const Spacer(),
                    // const Icon(Icons.edit_square),
                    Image.asset("assets/images/pen.png",
                        width: 25, color: Colors.indigo[900]),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Ubah',
                      style: mainHsi1,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black,
                  width: 0.2,
                ))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          MyFlutterApp.whatsapp,
                          size: 30,
                          color: Colors.indigo[900],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              'Nomor Whatsapp',
                              style: hsi16a,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '62 - 85376904583',
                              style: hsi16b,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          MyFlutterApp.home,
                          size: 30,
                          color: Colors.indigo[900],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alamat',
                              style: hsi16a,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Jl.Fl.Tobing No.148, Kelurahan Lestari,\nKecamatan Kisaran Timur',
                              style: hsi16b,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          MyFlutterApp.location_outline,
                          size: 30,
                          color: Colors.indigo[900],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kabupaten/Kota, Provinsi, Kode Pos',
                              style: hsi16a,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'KAB. ASAHAN, SUMATERA UTARA, 21221',
                              style: hsi16b,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/wedding-ring.png",
                          width: 25,
                          color: Colors.indigo[900],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Status Pernikahan / Jumlah Anak',
                              style: hsi16a,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Menikah / 3',
                              style: hsi16b,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
