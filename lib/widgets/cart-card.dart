import 'package:DukanKholo/widgets/slidemenu.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  List<bool> isSelected = [false, false, false];
  var brandName = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  var brandInfo =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey);

  var stockAlert =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green);

  var amountStyle = TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      fontSize: 14);

  final String productImage;
  final String productInfo;
  final String productName;
  final String price;
  final String status;

  CartCard({
    @required this.productImage,
    @required this.productName,
    @required this.productInfo,
    @required this.price,
    @required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return SlideMenu(
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Image.network(
                      productImage,
                      height: 130,
                      width: 110,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  new Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(productName, style: brandName),
                          SizedBox(
                            height: 5,
                          ),
                          Text(productInfo,
                              /* overflow: TextOverflow.ellipsis,
                                maxLines: 1, */
                              style: brandInfo),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\u20B9 $price.00",
                            style: amountStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            status,
                            style: stockAlert,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            constraints: BoxConstraints.expand(
                              width: 40,
                              height: 30,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.add),
                            ],
                            onPressed: (int index) {},
                            isSelected: isSelected,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              /* Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(width: 10),
                  // ButtonTheme(
                  //   minWidth: 170.0,
                  //   child: FlatButton(
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5.0),
                  //       side: BorderSide(color: Colors.grey, width: 1.5),
                  //     ),
                  //     color: Colors.white,
                  //     textColor: Colors.grey,
                  //     padding: EdgeInsets.all(8.0),
                  //     onPressed: () {},
                  //     child: Text(
                  //       "Save for later".toUpperCase(),
                  //       style: TextStyle(
                  //           fontSize: 12.0, fontWeight: FontWeight.w500),
                  //     ),
                  //   ),
                  // ),
                ],
              ), */
            ],
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
