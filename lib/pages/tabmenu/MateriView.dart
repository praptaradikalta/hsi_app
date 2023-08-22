import 'package:flutter/material.dart';

class MateriView extends StatefulWidget {
  const MateriView({Key? key}) : super(key: key);

  @override
  _MateriViewState createState() => _MateriViewState();
}

class _MateriViewState extends State<MateriView> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),

      color: Colors.green,
      child: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(bulan[index], style: TextStyle(fontSize: 30)),
              ),
            );
          },
          separatorBuilder: (context, position) {
            return Container(
              color: Colors.greenAccent,
              child: Text('Ini contoh separator Builder',
                  style: TextStyle(fontSize: 20)),
            );
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}
