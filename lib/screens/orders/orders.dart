import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10.0),
              child: new Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(8.0),
                shadowColor: Colors.blue,
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Icon(Icons.search),
                    ),
                    hintText: "Search all orders",
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(1.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                  ),
                ),
              ),
            ),
            OrderList(
              productImage:
                  "http://pngimg.com/uploads/shampoo/shampoo_PNG30.png",
              productName: 'LOREAL PARIS ELVIVE',
              status: "Delivered Yesterday",
            ),
            OrderList(
              productImage:
                  "http://pngimg.com/uploads/watches/watches_PNG9906.png",
              productName: 'MOTO Watch',
              status: "Ordered on 25.08.2020",
            ),
          ],
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  final String productImage;
  final String productName;
  final String status;

  OrderList({
    @required this.productImage,
    @required this.productName,
    @required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/orderdetails"),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        elevation: 2,
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chevron_right),
            ],
          ),
          title: Row(
            children: [
              Image.network(
                productImage,
                height: 80,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      status,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
