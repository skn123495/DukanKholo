import 'package:DukanKholo/widgets/categories-tiles.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Color(0xFFA1E4D2)
                ],
              ),
            ),
          ),
          elevation: 1,
          title: Text(
            "businesquare",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              },
              alignment: Alignment.centerLeft,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, "/cart");
              },
              alignment: Alignment.centerLeft,
            )
          ],
        ),
        body: Column(
          children: [
            CategoriesTiles(
              icon: Icons.laptop,
              mainTitle: 'Computer & Accessories',
            ),
            CategoriesTiles(
              icon: Icons.devices,
              mainTitle: 'TV, Appliances, Electronics',
            ),
          ],
        ));
  }
}
