import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  Widget _buildDivider() {
    return SizedBox(
      child: new Container(
        // margin: new EdgeInsetsDirectional.only(top: 1.0, bottom: 1.0),
        height: 2.0,
        color: Colors.grey[300],
      ),
    );
  }

  Widget _buildProductDetails(context) {
    // var lightStyle = TextStyle(
    //     color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 14);

    // var valueStyle = TextStyle(
    //   fontWeight: FontWeight.w600,
    //   fontSize: 15,
    //   color: Colors.black,
    // );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.all(2.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\u20B9 3,700",
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(text: 'MRP :'),
                                  new TextSpan(
                                    text: '\u20B9 4,699',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                      text: ' Save \u20B9 999 (21%)',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'EMI ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  new TextSpan(
                                    text:
                                        'form \u20B9 4,924.No Cost EMI avaliable.',
                                    style: new TextStyle(),
                                  ),
                                  new TextSpan(
                                      text: 'EMI option',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'Free Delivery ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  new TextSpan(
                                      text: 'Details',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: 'Delivered by ',
                                  ),
                                  new TextSpan(
                                      text: 'Sep 7-9 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  new TextSpan(
                                      text: ' Details',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        _buildDivider(),
      ],
    );
  }

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
          children: [
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '   Brand Microsoft',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Text(
                            '  104',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        'CITIZEN Eco-Drive Chronograph Analog Black Dial Mens Watch-CA0617-11ECITIZEN Eco-Drive Chronograph Analog Black Dial Mens Watch-CA0617-11E'),
                  ),
                ],
              ),
            ),
            ImageCarousel(),
            _buildProductDetails(context),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Carousel(
        showIndicator: true,
        boxFit: BoxFit.contain,
        dotBgColor: Colors.transparent,
        dotSize: 4,
        images: [
          // AssetImage('assets/images/image3.jpg'),
          NetworkImage(
              'https://m.media-amazon.com/images/I/81BspQsWAmL._AC_UL320_.jpg'),
          NetworkImage(
              'https://images-na.ssl-images-amazon.com/images/I/61D3iO4DBwL._UL1500_.jpg'),
          NetworkImage(
              'https://images-na.ssl-images-amazon.com/images/I/81-wks2gwFL._UL1500_.jpg'),
        ],
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(microseconds: 2000),
      ),
    );
  }
}
