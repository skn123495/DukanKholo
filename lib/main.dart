import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/data/auth.dart';
import 'package:DukanKholo/screens/Account/edit_profile.dart';
import 'package:DukanKholo/screens/Account/user_profile.dart';
import 'package:DukanKholo/screens/auth/Login/login.dart';
import 'package:DukanKholo/screens/auth/onboarding/onboarding.dart';
import 'package:DukanKholo/screens/cart/cart.dart';
import 'package:DukanKholo/screens/category/categories.dart';
import 'package:DukanKholo/screens/deals/deals.dart';
import 'package:DukanKholo/screens/home/home.dart';
import 'package:DukanKholo/screens/home/widget/productdetails.dart';
import 'package:DukanKholo/screens/home/widget/productlist.dart';
import 'package:DukanKholo/screens/notifications/notifications.dart';
import 'package:DukanKholo/screens/orders/order-details.dart';
import 'package:DukanKholo/screens/orders/orders.dart';
import 'package:DukanKholo/screens/search/search.dart';
import 'package:DukanKholo/screens/yourwishlist/yourwishlist.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AuthModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String username = "dhananjay";
  String token;

  void myLogin() {
    setState(() {
      username = "dhananjay";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dukan Kholo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF66CCCE),
        iconTheme: IconThemeData(color: PrimaryWhite),
        fontFamily: 'Livvic',
        accentColor: Color(0xFFFF9900),
        appBarTheme: AppBarTheme(
          color: Color(0xFF66CCCE),
        ),
      ),
      initialRoute: "/onboarding",
      routes: {
        "/": (context) =>
            (username == null) ? AuthWidget(myLogin: myLogin) : Home(),
        "/search": (context) => Search(),
        "/cart": (context) => Cart(),
        "/profile": (context) => UserProfile(),
        "/editprofile": (context) => EditProfile(),
        "/productlist": (context) => ProductList(),
        "/orders": (context) => Orders(),
        "/orderdetails": (context) => OrderDetails(),
        "/categories": (context) => Categories(),
        "/productdetails": (context) => ProductDetails(),
        "/yourwishlist": (context) => YourWishlist(),
        "/notifications": (context) => Notifications(),
        "/deals": (context) => Deals(),
        "/onboarding": (context) => Onboarding(),
        "/login": (context) => Login(),
        "/home": (context) => Home(),
      },
    );
  }
}

class AuthWidget extends StatelessWidget {
  AuthWidget({@required this.myLogin});
  final VoidCallback myLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
        ),
        body: Center(
            child: Column(children: <Widget>[
          RaisedButton(child: Text("Jump to Home"), onPressed: myLogin),
          RaisedButton(child: Text("Jump to SingnUp"), onPressed: null)
        ])));
  }
}
