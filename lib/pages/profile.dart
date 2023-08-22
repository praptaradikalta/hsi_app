import "package:flutter/material.dart";
import "package:tes_app/fontstyle.dart";

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
                style: mainHsi,
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
                          style: mainHsi,
                        ),
                        Text(
                          'ARN 202 - 03018',
                          style: mainHsi,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.edit_square),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: const Column(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
