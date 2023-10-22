import 'package:flutter/material.dart';
import 'package:hsi_app/fontstyle.dart';
// import 'package:hsi_app/hsi_app_icons.dart';
import 'package:hsi_app/hsi_app_icons.dart';
import 'package:hsi_app/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 9, 84),
        title: Row(
          children: [
            Image.asset(
              'assets/images/hsi.png',
              height: 35,
              width: 35,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text('EDU HSI'),
            const Spacer(),
            Text(
              'v.2211-2402',
              style: subHsi12,
            ),
          ],
        ),
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        const Profile()
        // Container(
        //   color: Colors.yellow,
        //   alignment: Alignment.center,
        //   child: const Text('Page 4'),
        // ),
      ][_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Academik',
          ),
          BottomNavigationBarItem(
            icon: Icon(HsiApp.file_alt),
            label: 'Reguler',
          ),
          BottomNavigationBarItem(
            icon: Icon(HsiApp.user),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
