import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

Widget _buildDivider() {
  return SizedBox(
    child: new Container(
      margin: new EdgeInsetsDirectional.only(top: 15.0, bottom: 15.0),
      height: 1.0,
      color: Colors.grey[300],
    ),
  );
}

Widget _buildOrderDetails(context) {
  var subHeadingStyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 15);

  var valueStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.black,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "View orders details",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "Order date",
                    style: subHeadingStyle,
                  ),
                ),
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "02.09.2020",
                    style: valueStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "Order #",
                    style: subHeadingStyle,
                  ),
                ),
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "406-8917706-17285",
                    style: valueStyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "Order total",
                    style: subHeadingStyle,
                  ),
                ),
                new Expanded(
                  flex: 1,
                  child: new Text(
                    "\u20B9 325.00 (1 Item)",
                    style: valueStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildShipmentDetails(context) {
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
      Text(
        "Shipment Details",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "One-Day Delivery at \u20B9 100 FREE with Prime.",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  letterSpacing: 0.5),
            ),
            _buildDivider(),
            Text(
              "Delivered",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Deliverey Estimate:",
              style: TextStyle(
                  color: Colors.black87, fontSize: 15, letterSpacing: 0.5),
            ),
            Text(
              "Thursday 3 September, 2020",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new Image.network(
                    "http://pngimg.com/uploads/watches/watches_PNG9906.png",
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
                        "\u20B9 325.00",
                        style: valueStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Qty: 1",
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
      )
    ],
  );
}

Widget _buildPaymentDetails(context) {
  var headingStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 0.5);

  var valueStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black54,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Payment Information",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment Method", style: headingStyle),
            SizedBox(
              height: 5.0,
            ),
            Text("Amazon Pay Balance \nBHIM UPI", style: valueStyle),
            _buildDivider(),
            Text("Billing Address", style: headingStyle),
            SizedBox(
              height: 5.0,
            ),
            Text("A-1/568, \nPU Block, \nPitampura, \nDelhi - 110089",
                style: valueStyle),
          ],
        ),
      )
    ],
  );
}

Widget _buildShippingAddress(context) {
  var headingStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 0.5);

  var valueStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black54,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Shipping Address",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username", style: headingStyle),
            SizedBox(
              height: 5.0,
            ),
            Text("A-1/568, \nPU Block, \nPitampura, \nDelhi - 110089",
                style: valueStyle),
          ],
        ),
      )
    ],
  );
}

Widget _buildOrderSummary(context) {
  var subHeadingStyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 15);

  var valueStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.black,
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Order Summary",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Items: ",
                  style: subHeadingStyle,
                ),
                new Text(
                  "\u20B9 275.00",
                  style: valueStyle,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Postage & Packing",
                  style: subHeadingStyle,
                ),
                new Text(
                  "\u20B9 0.00",
                  style: valueStyle,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Total before Tax",
                  style: subHeadingStyle,
                ),
                new Text(
                  "\u20B9 275.42",
                  style: valueStyle,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Tax",
                  style: subHeadingStyle,
                ),
                new Text(
                  "\u20B9 49.58",
                  style: valueStyle,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Total",
                  style: subHeadingStyle,
                ),
                new Text(
                  "\u20B9 325.00",
                  style: valueStyle,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Order Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                new Text(
                  "\u20B9 325.00",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

class _OrderDetailsState extends State<OrderDetails> {
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
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildOrderDetails(context),
            _buildShipmentDetails(context),
            _buildPaymentDetails(context),
            _buildShippingAddress(context),
            _buildOrderSummary(context)
          ],
        ),
      ),
    );
  }
}
