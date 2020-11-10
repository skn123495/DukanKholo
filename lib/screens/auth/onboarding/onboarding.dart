import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/size_config.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget _buildEditButton(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width - 30,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 15),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: kPColor,
          padding: EdgeInsets.all(17.0),
          child: Text("Get Started".toUpperCase(),
              style: TextStyle(
                fontSize: SizeConfig.getSW(context) * 0.052,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                color: kWhiteColor,
              )),
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: SizeConfig.getSH(context) * 0.2),
                  child: ImageCarousel()),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.getSH(context) * 0.014),
                child: Text(
                  'Online Community',
                  style: TextStyle(fontSize: SizeConfig.getSH(context) * 0.030),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.getSH(context) * 0.0014,
                    bottom: SizeConfig.getSH(context) * 0.010),
                child: Text(
                  'Community that you love ever ',
                  style: TextStyle(fontSize: SizeConfig.getSH(context) * 0.025),
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.getSH(context) * 0.045),
                  child: _buildEditButton(context)),
            ],
          )),
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.getSH(context) * 0.3,
      // width: SizeConfig.getSW(context) * 0.8,
      child: Carousel(
        showIndicator: true,
        boxFit: BoxFit.contain,
        dotBgColor: Colors.transparent,
        dotSize: 4,
        images: [
          AssetImage('assets/images/first.png'),
          AssetImage('assets/images/second.png'),
          AssetImage('assets/images/fourth.png'),
          // NetworkImage(
          //     'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          // NetworkImage(
          //     'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
        ],
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(microseconds: 2000),
      ),
    );
  }
}
