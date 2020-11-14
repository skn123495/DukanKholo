import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/navigator/drawer.dart';
import 'package:DukanKholo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        iconTheme: new IconThemeData(color: PrimaryWhite),
        centerTitle: true,
        title: Text(
          "Dukan Kholo",
          style: TextStyle(fontWeight: FontWeight.bold, color: PrimaryWhite),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Navigator.pushNamed(context, "/search");
            },
            alignment: Alignment.centerLeft,
          ),
          IconButton(
            icon: Icon(Icons.video_collection),
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
            alignment: Alignment.centerLeft,
          )
        ],
      ),
      drawer: MainDrawer(),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EnlargeStrategyDemo(),
            _centerShareCard(),
            _centerStepForm(),
          ],
        ),
      ),
    );
  }

  Widget _centerStepForm() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.getSH(context) * 0.018),
        padding: EdgeInsets.only(
          top: SizeConfig.getSH(context) * 0.026,
          bottom: SizeConfig.getSH(context) * 0.026,
          left: SizeConfig.getSH(context) * 0.023,
        ),
        width: SizeConfig.getSH(context) * 0.44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: SecondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(.5, .8), // shadow direction: bottom right
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: SizeConfig.getSW(context) * 0.023,
              ),
              child: Text(
                'Start Setting up your store ',
                style: TextStyle(
                    fontSize: SizeConfig.getSW(context) * 0.045,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.getSW(context) * 0.013,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: SizeConfig.getSW(context) * 0.013,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.034,
                            ),
                            width: 50,
                            height: 50,
                            decoration: new BoxDecoration(
                              color: PrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: SizeConfig.getSW(context) * 0.065,
                                    color: PrimaryWhite,
                                    fontFamily: 'Livvic-Bold'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: SizeConfig.getSW(context) * 0.023,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Add Products',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.getSW(context) * 0.045,
                                        color: PrimaryblackText,
                                        fontFamily: 'Livvic-Bold'),
                                  ),
                                  Text(
                                    'Add Products from your gallery',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.getSW(context) * 0.035,
                                        color: PrimaryblackText,
                                        fontFamily: 'Livvic-Bold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.050,
                            ),
                            child: Icon(
                              Icons.add_circle_outline,
                              color: PrimaryColor,
                              size: SizeConfig.getSW(context) * 0.075,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: SizeConfig.getSW(context) * 0.013,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.034,
                            ),
                            width: 50,
                            height: 50,
                            decoration: new BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.check,
                              color: PrimaryWhite,
                            )
                                // Text(
                                //   '2',
                                //   style: TextStyle(
                                //       fontSize: SizeConfig.getSW(context) * 0.065,
                                //       color: PrimaryWhite,
                                //       fontFamily: 'Livvic-Bold'),
                                // ),
                                ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: SizeConfig.getSW(context) * 0.023,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Step Complete',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.getSW(context) * 0.045,
                                        color: PrimaryblackText,
                                        fontFamily: 'Livvic-Bold'),
                                  ),
                                  Text(
                                    'Congrats! business profile setup',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.getSW(context) * 0.035,
                                      color: PrimaryblackText,
                                      fontFamily: 'Livvic-Bold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.050,
                            ),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: SizeConfig.getSW(context) * 0.075,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: SizeConfig.getSW(context) * 0.013,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.034,
                            ),
                            width: 50,
                            height: 50,
                            decoration: new BoxDecoration(
                              color: PrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: SizeConfig.getSW(context) * 0.065,
                                    color: PrimaryWhite,
                                    fontFamily: 'Livvic-Bold'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: SizeConfig.getSW(context) * 0.023,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Place test order',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.getSW(context) * 0.045,
                                        color: PrimaryblackText,
                                        fontFamily: 'Livvic-Bold'),
                                  ),
                                  Text(
                                    'share on whatsapp and place a test order',
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.getSW(context) * 0.035,
                                        color: PrimaryblackText,
                                        fontFamily: 'Livvic-Bold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: SizeConfig.getSW(context) * 0.050,
                            ),
                            child: Icon(
                              Icons.offline_share,
                              color: PrimaryColor,
                              size: SizeConfig.getSW(context) * 0.075,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  // All Widgets of this Class
  Widget _centerShareCard() {
    return Center(
      child: Container(
          margin: EdgeInsets.only(top: SizeConfig.getSH(context) * 0.018),
          padding: EdgeInsets.only(
            top: SizeConfig.getSH(context) * 0.026,
            bottom: SizeConfig.getSH(context) * 0.026,
            left: SizeConfig.getSH(context) * 0.023,
          ),
          width: SizeConfig.getSH(context) * 0.44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: SecondaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(.5, .8), // shadow direction: bottom right
              )
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Your Persional website',
                      style: TextStyle(
                          fontSize: SizeConfig.getSW(context) * 0.050,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'DukhanKholo.com/MyStorui6',
                      style: TextStyle(
                          fontSize: SizeConfig.getSW(context) * 0.035,
                          color: PrimaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Text(
                        'Your Customer can view your catalog and place via this link',
                        style: TextStyle(
                            fontSize: SizeConfig.getSW(context) * 0.035,
                            color: DarkGrey,
                            fontFamily: 'Livvic-Bold'),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: PrimaryColor,
                    ),
                    SizedBox(height: SizeConfig.getSW(context) * 0.055),
                    Icon(
                      Icons.copy,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// Image Carousel
final List<String> imgList = [
  'https://image.freepik.com/free-vector/coffee-bakery-shop-re-opening-business_23-2148541645.jpg',
  'https://img.freepik.com/free-vector/shop-with-open-sign_23-2148562251.jpg?size=338&ext=jpg&ga=GA1.2.1632147086.1603626439',
  'https://image.freepik.com/free-vector/coffee-shop-store-cafe_126283-699.jpg',
  'https://image.freepik.com/free-vector/shopping-online-men-mobile-phone-concept_199252-11.jpg',
  'https://image.freepik.com/free-vector/user-rating-feedback-customer-reviews-cartoon-web-icon-e-commerce-online-shopping-internet-buying-trust-metrics-top-rated-product_335657-778.jpg',
  'https://image.freepik.com/free-vector/shopping-e-commerce-isometric-composition-with-conceptual-image-phone-items-top-touchscreen-vector-illustration_1284-30744.jpg '
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        // decoration: BoxDecoration(
                        //   gradient: LinearGradient(
                        //     colors: [
                        //       Color.fromARGB(200, 0, 0, 0),
                        //       Color.fromARGB(0, 0, 0, 0)
                        //     ],
                        //     begin: Alignment.bottomCenter,
                        //     end: Alignment.topCenter,
                        //   ),
                        // ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        // child: Text(
                        //   'No. ${imgList.indexOf(item)} image',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class EnlargeStrategyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: imageSliders,
    );
  }
}
