import "package:flutter/material.dart";
import "package:hsi_app/fontstyle.dart";

import "package:hsi_app/myflutter_app.dart";

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
              const Spacer(),
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
          // Column Induk Profil
          child: Column(
            children: [
              // Header Profil
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlusJakartaSans',
                      ),
                    ),
                  ],
                ),
              ),
              // Data Profil
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
              ),
              // Syahadah & Transkrip
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Syahadah & Transkrip',
                      style: mainHsi1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Silsilah Ilmiyyah Pembahasan Kitab \nAl Ushul Tsalasah Bagian Ketiga \nREG-2023-S1',
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Unduh',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.indigo[900],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(MyFlutterApp.file_download,
                                  color: Colors.indigo[900]),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // List Admin
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(MyFlutterApp.headset_mic,
                            color: Colors.indigo[900]),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'List Admin',
                          style: mainHsi1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Haryadi ', style: hsi16b),
                        Text(
                          ' (ARN181-09095)',
                          style: mainHsi2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Silsilah Ilmiyyah Pembahasan Kitab Al Ushul Ats Tsalatsah Bagian Kedua',
                      style: hsi16b,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Grup : ARN202-01',
                      style: hsi16b,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Program Reguler',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Hubungi',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(MyFlutterApp.whatsapp, color: Colors.white),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Chairul Anwar
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Chairul Anwar ', style: hsi16b),
                        Text(
                          ' (ARN182-43051)',
                          style: mainHsi2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Silsilah Ilmiyyah Pembahasan Kitab Al Ushul Ats Tsalatsah Bagian Kedua',
                      style: hsi16b,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Grup : ARN202-01',
                      style: hsi16b,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Program Reguler',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Hubungi',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(MyFlutterApp.whatsapp, color: Colors.white),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Info Lain
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          MyFlutterApp.info,
                          color: Colors.indigo,
                        ),
                        Text(
                          '  Info Lainnya',
                          style: mainHsi1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            MyFlutterApp.lock_open_empty,
                            color: Colors.indigo,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Ganti Password',
                            style: hsi16b,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            MyFlutterApp.help_outline,
                            color: Colors.indigo,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Bantuan',
                            style: hsi16b,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      // decoration: const BoxDecoration(
                      //   border: Border(
                      //     bottom: BorderSide(
                      //       color: Colors.black,
                      //       width: 0.2,
                      //     ),
                      //   ),
                      // ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/security.png",
                            width: 25,
                            color: Colors.indigo[900],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Kebijakan Privasi',
                            style: hsi16b,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.red,
                            width: 1,
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Keluar',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PlusJakartaSans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    //     ),
                    //   ),

                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
