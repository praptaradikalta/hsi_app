import 'package:flutter/material.dart';

TextStyle mainHeader = const TextStyle(
    fontSize: 18, color: Colors.blueGrey, fontFamily: 'Sansita-Bold');

TextStyle subHeader = const TextStyle(
    fontSize: 16, color: Colors.blue, fontFamily: 'Satisfy-Regular');

TextStyle mainHsi = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'PlusJakartaSans');
TextStyle subHsi14 = const TextStyle(
    fontSize: 15, color: Colors.grey, fontFamily: 'PlusJakartaSans');
TextStyle subHsi12 = const TextStyle(
    fontSize: 12,
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontFamily: 'PlusJakartaSans');
TextStyle subHsi10 = const TextStyle(
    fontSize: 10,
    color: Colors.black,
    // fontWeight: FontWeight.w600,
    fontFamily: 'PlusJakartaSans');

TextStyle Eva1 = const TextStyle(
    fontSize: 8,
    color: Colors.indigo,
    fontWeight: FontWeight.w900,
    fontFamily: 'PlusJakartaSans');

TextStyle Eva2 = const TextStyle(
    fontSize: 8,
    color: Colors.green,
    fontWeight: FontWeight.w900,
    fontFamily: 'PlusJakartaSans');

TextStyle Eva3 = const TextStyle(
    fontSize: 8,
    color: Colors.grey,
    fontWeight: FontWeight.w900,
    fontFamily: 'PlusJakartaSans');
TextStyle Eva4 = const TextStyle(
    fontSize: 8,
    color: Colors.black87,
    fontWeight: FontWeight.w900,
    fontFamily: 'PlusJakartaSans');

Color selectColor(String status) {
  const Color color1 = Colors.indigo;
  const Color color2 = Colors.green;
  const Color color3 = Colors.grey;
  const Color color4 = Colors.red;

  if (status == 'Selesai') {
    return color1;
  } else if (status == 'Belum Dikerjakan') {
    return color2;
  } else if (status == 'Belum Tersedia') {
    return color3;
  } else {
    return color4;
  }
}
