import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/screens/products/widget/data_card.dart';
import 'package:DukanKholo/size_config.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          // backgroundColor: Colors.green[50],
          appBar: AppBar(
            iconTheme: new IconThemeData(color: PrimaryWhite),
            //centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(color: PrimaryColor),
            ),
            title: Center(
              child: Text(
                "Products",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PrimaryWhite,
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                },
                alignment: Alignment.centerLeft,
              )
            ],
            bottom: TabBar(
              indicatorColor: PrimaryWhite,
              labelColor: PrimaryWhite,
              unselectedLabelColor: DarkGrey,
              tabs: [
                Tab(
                  text: "Products  (0)",
                ),
                Tab(
                  text: "Category  (0)",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    DataCard(),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // Icon(Icons.delivery_dining),
                    DataCard()
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
