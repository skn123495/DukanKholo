import 'package:flutter/material.dart';

class Deals extends StatefulWidget {
  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
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
    var lightStyle = TextStyle(
        color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 14);

    var valueStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 15,
      color: Colors.black,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDivider(),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/productdetails");
          },
          child: Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: const EdgeInsets.all(2.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: <Widget>[
                    new Container(
                      child: new Image.network(
                        "http://pngimg.com/uploads/watches/watches_PNG9906.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    new Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Motorola Moto 360 Smartwatch  (Black Strap)",
                            style: valueStyle,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.yellow,
                              ),
                              Text(
                                "1,621",
                                style: valueStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "\u20B9 3,700",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '\u20B9 4,699',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: 'Save \u20B9 999 (21%)',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Save extra No Cost EMI",
                            style: lightStyle,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Sold by: motorola pvt. ltd.",
                            style: lightStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProductDetails(context),
          ],
        ),
      ),
    );
  }
}
