import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HorizontalCard(),
  ));
}

class HorizontalCard extends StatefulWidget {
  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  //Here I'm going to create a custom widget for the items box
  Widget items(String name, String category, String imgUrl, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        // this widget will make your container clickable
        onTap: () {},
        child: Container(
          width: 180.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 3.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Image(
                image: NetworkImage(imgUrl),
                width: 170.0,
                height: 160.0,
                alignment: Alignment.center,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                " \u20B9 $price",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Color(
                      0xFFFF9900,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Now I'm going to import a list of images that I collected from Unsplash and amazon website
  //you can choose the image that you want and add them into the list
  List<String> imgUrl = [
    "https://in.jbl.com/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw4a6e76c7/C150SI-black1-hero-1605x1605px.png",
    "https://purepng.com/public/uploads/large/samsung-galaxy-s10-prism-front-6bx.png",
    "https://www.mypinnacleview.com/wp-content/uploads/2017/07/macbook-pro-png.png",
    "https://static.bhphoto.com/images/images2500x2500/1574693242_1297189.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61fTX5TjAEL._UX569_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img17/PC/sprocket/Tile-2-1._SS200_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/I/51JKnkxCl7L._AC_SX184_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/710tUwxHq7L._UL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61LQQSc9fZL._UL1440_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Recomended for you",
                style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600),
              ),
            ),
            //Now we will add the items list
            Container(
              width: double
                  .infinity, // this line will make the container take the full width of the device
              height:
                  270.0, // when you want to create a list view you should precise the height and width of it's container
              child: ListView(
                // scrollDirection: Axis
                //     .horizontal,
                scrollDirection: Axis
                    .horizontal, // this will make the list scroll horizontally
                children: [
                  //now let's add an item to test
                  items("JBL Headphones", "Audio & Music", imgUrl[0], "1663.3"),
                  items("Samsung", "Smartphones", imgUrl[1], "1500.3"),
                  items("MacBook pro", "Tech", imgUrl[2], "1900.56"),
                  items("Blue yeti", "Audio", imgUrl[3], "1553.3"),
                  //Note that this is the UI of the App but you can easly implement a backend service via a REST API
                ],
              ),
            ),
            //for the second part of the app it's the same principale so let's just copy the first elements
            //Let's add some space
            SizedBox(
              height: 20.0,
            ),

            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     "Recommended for you",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 28.0,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
