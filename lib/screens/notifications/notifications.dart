import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                Row(
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new Image.network(
                        "https://cdn2.iconfinder.com/data/icons/social-media-8/512/bell.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    new Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Motorola Moto 360 Smartwatch  (Black Strap)",
                            style: valueStyle,
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
