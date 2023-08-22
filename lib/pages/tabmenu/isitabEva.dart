import 'package:tes_app/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:tes_app/pages/EvaList.dart';

class EvaluasiView extends StatefulWidget {
  const EvaluasiView({Key? key}) : super(key: key);

  @override
  _EvaluasiViewState createState() => _EvaluasiViewState();
}

TextStyle Eval = const TextStyle(
    fontSize: 8,
    // color: selectColor(listEva[index]['status']),
    fontWeight: FontWeight.w900,
    fontFamily: 'PlusJakartaSans');

class _EvaluasiViewState extends State<EvaluasiView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),

      // color: Colors.green,
      child: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Text(listEva[index]['judul'],
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      'Dibuka : ' + listEva[index]['dibuka'],
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 8,
                          color: selectColor(listEva[index]['status'])),
                    ),
                    Spacer(),
                    Text(
                      listEva[index]['status'],
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 8,
                          color: selectColor(listEva[index]['status'])),
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(children: [
                    Text(
                      'Berakhir : ' + listEva[index]['berakhir'],
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PlusJakartaSans',
                          fontSize: 8,
                          color: selectColor(listEva[index]['status'])),
                    ),
                    Spacer(),
                    Text(
                      listEva[index]['jumSoal'] + ' Soal',
                      style: Eva4,
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350, 40),
                      primary: selectColor(
                          listEva[index]['status']), // Background color
                    ),
                    child: Text(listEva[index]['tombol'],
                        style: TextStyle(color: Colors.white)),
                  )
                ]),
              ),
            );
          },
          itemCount: listEva.length,
        ),
      ),
    );
  }
}
