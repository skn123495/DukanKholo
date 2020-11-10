import 'package:DukanKholo/widgets/slidemenu.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  var lightStyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 14);

  var valueStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return SlideMenu(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/productdetails");
        },
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
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
                                  "\u20B9 3,700 ",
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
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      new TextSpan(
                                        text: ' Save \u20B9 999',
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
        ),
      ),
      menuItems: <Widget>[
        new Container(
          child: new IconButton(
            icon: new Icon(
              Icons.delete,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
