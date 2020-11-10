import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/navigator/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget _buildDivider() {
  return SizedBox(
    child: new Container(
      // margin: new EdgeInsetsDirectional.only(top: 1.0, bottom: 1.0),
      height: 5.0,
      color: Colors.grey[300],
    ),
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPColor,
        iconTheme: new IconThemeData(color: kWhiteColor),
        centerTitle: true,
        title: Text(
          "Community App",
          style: TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor),
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
