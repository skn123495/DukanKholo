import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/size_config.dart';
import 'package:DukanKholo/widgets/insight-card.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: PrimaryWhite),
        elevation: 0,
        backgroundColor: PrimaryColor,
        title: Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.bold, color: PrimaryWhite),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.pushNamed(context, "/editprofile");
            },
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      body: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: PrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildShopFullName(context, 'MyComputerWala'),
                _buildShopFullName(context, 'Electronics'),
                SizedBox(
                  height: SizeConfig.getSH(context) * 0.010,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.getSW(context) * 0.07,
                    ),
                    color: PrimaryWhite,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.getSH(context) * 0.010,
                    horizontal: SizeConfig.getSH(context) * 0.010,
                  ),
                  width: SizeConfig.getSH(context) * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Url of page ',
                        style: TextStyle(color: PrimaryColor),
                      ),
                      _buildLoginButton(context),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.getSH(context) * 0.010,
                ),
                Column(
                  children: <Widget>[
                    _buildSwitchButton(context),
                    _buildSwitchButton(context),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              _buildAccountLists(context, 'Refer and Earn', Icons.share),
              _buildAccountLists(
                  context, 'Promote my business', Icons.record_voice_over),
              _buildAccountLists(
                  context, 'Video Guideness', Icons.video_collection),
              _buildAccountLists(context, 'Help', Icons.live_help),
              _buildAccountLists(
                  context, 'Delivery Charges', Icons.delivery_dining),
              _buildAccountLists(context, 'Privacy Policy', Icons.shield),
              _buildAccountLists(context, 'Rate Us', Icons.star_rate),
            ],
          )
        ],
      ),
    );
  }

  bool switchControl = false;
  var textHolder = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  Widget _buildSwitchButton(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text: 'Store Status : ',
                style: new TextStyle(
                    fontSize: SizeConfig.getSW(context) * 0.045,
                    color: PrimaryWhite),
              ),
              new TextSpan(
                text: 'Open',
                style: new TextStyle(
                    fontSize: SizeConfig.getSW(context) * 0.045,
                    fontWeight: FontWeight.w600,
                    color: PrimaryWhite),
              ),
            ],
          ),
        ),
        Switch(
          onChanged: toggleSwitch,
          value: switchControl,
          activeColor: PrimaryColor,
          activeTrackColor: Colors.blueGrey,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey,
        )
      ],
    );
  }

  Widget _buildProfileImage(context) {
    return Container(
      padding: EdgeInsets.only(
          top: SizeConfig.getSH(context) * 0.012,
          bottom: SizeConfig.getSH(context) * 0.012),
      child: Center(
        child: ClipOval(
          child: Container(
            width: 110.0,
            height: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/bc/62/25/bc622526e4ab48a6144e52987ddc9eb9.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShopFullName(context, value) {
    TextStyle _nameTextStyle = TextStyle(
        fontFamily: 'Livvic-Bold',
        fontSize: SizeConfig.getSW(context) * 0.045,
        color: PrimaryWhite);
    return Container(
      // padding:
      //     EdgeInsets.symmetric(vertical: SizeConfig.getSH(context) * 0.015),
      child: Text(
        value,
        style: _nameTextStyle,
      ),
    );
  }

  Widget _buildEditButton(context) {
    return ButtonTheme(
      minWidth: 120.0,
      child: Column(
        children: [
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: Theme.of(context).accentColor, width: 1),
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            padding: EdgeInsets.all(12.0),
            onPressed: () {
              Navigator.pushNamed(context, "/editprofile");
            },
            child: Text(
              "Edit your public profile".toUpperCase(),
              style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildAccountLists(context, title, myicon) {
    return Container(
      width: SizeConfig.getSH(context) * 0.44,
      margin: EdgeInsets.only(top: SizeConfig.getSH(context) * 0.018),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getSH(context) * 0.0010,
          vertical: SizeConfig.getSH(context) * 0.018),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
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
        children: [
          Expanded(
              // flex: 1,
              child: Icon(
            myicon,
            color: DarkGrey,
          )),
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: TextStyle(
                fontSize: SizeConfig.getSW(context) * 0.035,
                color: PrimaryblackText,
              ),
            ),
          ),
          Expanded(
              child: Icon(
            Icons.arrow_forward_ios,
            color: DarkGrey,
          )),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return SizedBox(
      child: new Container(
        margin: new EdgeInsetsDirectional.only(
          top: SizeConfig.getSW(context) * 0.005,
          bottom: SizeConfig.getSW(context) * 0.005,
        ),
        height: 2.0,
        color: Colors.grey[300],
      ),
    );
  }

  Widget _buildLoginButton(context) {
    return Container(
      height: SizeConfig.getSW(context) * 0.07,
      width: SizeConfig.getSW(context) * 0.3,
      child: RaisedButton(
          elevation: 5.0,
          color: PrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.whatshot,
                    color: PrimaryWhite,
                  )),
              Expanded(
                  flex: 2,
                  child: Text(
                    "Share",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: SizeConfig.getSW(context) * 0.047,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          )),
    );
  }
}
