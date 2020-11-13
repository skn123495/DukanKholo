import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/navigator/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        iconTheme: new IconThemeData(color: PrimaryWhite),
        centerTitle: true,
        title: Text(
          "Dukan Kholo",
          style: TextStyle(fontWeight: FontWeight.bold, color: PrimaryWhite),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, "/search");
            },
            alignment: Alignment.centerLeft,
          ),
          // IconButton(
          //   icon: Icon(Icons.shopping_cart),
          //   onPressed: () {
          //     Navigator.pushNamed(context, "/cart");
          //   },
          //   alignment: Alignment.centerLeft,
          // )
        ],
      ),
      drawer: MainDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}
