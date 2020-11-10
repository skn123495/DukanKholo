import 'package:DukanKholo/widgets/cart-card.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var amountStyle = TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {},
          color: Theme.of(context).accentColor,
          textColor: Colors.black,
          child: Text(
            'Proceed to Pay'.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
      ),
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
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    "Deliver to User - ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 14),
                  ),
                  Text(
                    "A Block, Pitampura",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 14),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    "Sub-Total (2 Items) : ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 14),
                  ),
                  Text(
                    "\u20B9 1115.00",
                    style: amountStyle,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              width: double.maxFinite,
              child: Container(
                padding:
                    const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    CartCard(
                        productImage:
                            'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/12046596/2020/7/8/ec974e52-2c04-4fe9-9ce3-431eb92b0ece1594187941415-pTron-Bassbuds-Lite-In-Ear-True-Wireless-Stereo-Earphones-TW-2.jpg',
                        productName: 'pTron',
                        productInfo:
                            "White Bassbuds Lite In-Ear True Wireless Stereo Earphones with Mic",
                        price: '980',
                        status: 'In Stock'),
                    CartCard(
                        productImage:
                            'https://images-na.ssl-images-amazon.com/images/I/51dRS8mJ1UL._SL1500_.jpg',
                        productName: 'Godrej CCTV Camera',
                        productInfo:
                            "Godrej Security Solutions Seethru HD IR CCTV Camera (2MP, GODREJ2MP1DOME)",
                        price: '1059',
                        status: 'In Stock'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
