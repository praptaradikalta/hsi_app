// import 'dart:ui';
// import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:tes_app/fontstyle.dart';
import 'package:tes_app/pages/EvaList.dart';

// import 'package:belajarflutter/pages/tabmenu/MateriView.dart';

// import 'package:belajarflutter/pages/tabmenu/Lain2View.dart';
import 'package:tes_app/pages/tabmenu/Lain2View.dart';
import 'package:tes_app/pages/tabmenu/MateriView.dart';
import './tabmenu/isitabEva.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  List<Widget> _tabEvaluasi() => [
        Tab(
          child: Row(
            children: [
              Icon(
                Icons.featured_play_list_rounded,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Materi'),
            ],
          ),
        ),
        Tab(
          // child: Container(
          //   color: Color.fromRGBO(225, 241, 253, 1),
          //   padding: EdgeInsets.all(5),
          child: Row(children: [
            Icon(
              Icons.edit,
              size: 20,
              color: Colors.indigo[900],
            ),
            SizedBox(
              width: 8,
            ),
            Text('Evaluasi',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w900,
                )),
          ]),
        ),
        Tab(
          child: Row(
            children: [
              Icon(
                Icons.list,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Lainnya'),
            ],
          ),
        ),
      ];

  List<Widget> _ApBar() => [
        Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Program Reguler : 211",
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'PlusJakartaSans'),
        ),
        Spacer(),
        Text(
          "v.2211-2402",
          style: TextStyle(
              color: Colors.white, fontSize: 11, fontFamily: 'PlusJakartaSans'),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Row(
            children: _ApBar(),
          )),
      body: SafeArea(
        // child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(17),
          // height: MediaQuery.of(context).size.height,
          // width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Silsisah Ilmiyah 7: Beriman kepada Kitab - \nKitab Allah ﷻ',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 16,
                  ),
                ),
                TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.indigo, width: 4.0),
                      ),
                      color: Color.fromRGBO(239, 243, 247, 1)),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: _tabEvaluasi(),
                  labelColor: Colors.grey,
                  labelStyle: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Container(
                  child: Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        MateriView(),
                        EvaluasiView(),
                        Lain2View(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
