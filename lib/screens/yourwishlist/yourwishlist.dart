import 'package:DukanKholo/widgets/product-card.dart';
import 'package:flutter/material.dart';

class YourWishlist extends StatefulWidget {
  @override
  _YourWishlistState createState() => _YourWishlistState();
}

class _YourWishlistState extends State<YourWishlist> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(),
          ],
        ),
      ),
    );
  }
}
