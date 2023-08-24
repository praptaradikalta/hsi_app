import 'package:flutter/material.dart';

TextStyle mainHeader = const TextStyle(
    fontSize: 18, color: Colors.blueGrey, fontFamily: 'Sansita-Bold');

TextStyle subHeader = const TextStyle(
    fontSize: 16, color: Colors.blue, fontFamily: 'Satisfy-Regular');

TextStyle mainHsi1 = const TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'PlusJakartaSans');

TextStyle mainHsi2 = const TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontFamily: 'PlusJakartaSans');

TextStyle hsi16a = const TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
    fontFamily: 'PlusJakartaSans');

TextStyle hsi16b = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'PlusJakartaSans');

TextStyle subHsi14 = const TextStyle(
    fontSize: 15, color: Colors.grey, fontFamily: 'PlusJakartaSans');
TextStyle subHsi12 = const TextStyle(
    fontSize: 12,
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontFamily: 'PlusJakartaSans');
TextStyle mainHsi12 = const TextStyle(
    fontSize: 12,
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
  const Color biru = Colors.indigo;
  const Color hijau = Colors.green;
  const Color abu = Colors.grey;
  const Color merah = Colors.red;
  const Color hitam = Colors.black;

  if (status == 'Selesai') {
    return biru;
  } else if (status == 'Belum Dikerjakan') {
    return hijau;
  } else if (status == 'Belum Tersedia') {
    return abu;
  } else if (status == 'isian') {
    return hitam;
  } else if (status == 'judul') {
    return abu;
  } else {
    return merah;
  }
}
