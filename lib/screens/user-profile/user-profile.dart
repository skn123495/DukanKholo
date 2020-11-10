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
      body: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new NetworkImage(
              'https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/08/nature-design.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new Stack(
        children: <Widget>[
          new Positioned(
            right: 4.0,
            bottom: 4.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Icon(
                Icons.camera_alt,
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/bc/62/25/bc622526e4ab48a6144e52987ddc9eb9.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.white,
          width: 5.0,
        ),
      ),
      child: Stack(
        children: <Widget>[
          new Positioned(
            right: 4.0,
            bottom: 4.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Icon(
                Icons.camera_alt,
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      "Username",
      style: _nameTextStyle,
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

  Widget _buildAbout(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),

          //If empty
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/editprofile");
            },
            child: Text(
              "Add a couple of words about who you are",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.blue,
                  letterSpacing: 0.5),
            ),
          ),

          /* //If data exist
          Text(
            "I can and I will do things to promote healing in my life. I can handle this one step at a time.",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey,
                letterSpacing: 0.5),
          ),
         */
        ],
      ),
    );
  }

  Widget _buildInsights(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Insights",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InsightCard(
                    value: '10', title: 'Helpful Votes', color: Colors.green),
                InsightCard(value: '2', title: 'Reviews', color: Colors.red),
                InsightCard(
                    value: '5', title: 'Followers', color: Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAccount(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Always Private",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Check your orders and payments options, manage your password and more.",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black87,
                letterSpacing: 0.5),
          ),
          SizedBox(
            height: 10,
          ),
          //If empty
          InkWell(
            onTap: () {},
            child: Text(
              "Go to your Account",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.blue,
                  letterSpacing: 0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLists(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lists",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.network(
                "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/9125929/2019/4/22/f9d1cc8c-88cd-4032-9e5e-3b504ca2a77c1555917241637-UNKNOWN-by-Ayesha-Black--Silver-Toned-Leather-Multistrand-Br-1.jpg",
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Shopping List 1",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Private",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.network(
                "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/10250053/2019/7/18/f7065b33-32ad-4ed4-afbb-21690e10ca221563446837522-Louis-Philippe-Men-Accessory-Gift-Set-621563446835895-1.jpg",
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Shopping List 2",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Private",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return SizedBox(
      child: new Container(
        margin: new EdgeInsetsDirectional.only(top: 15.0, bottom: 15.0),
        height: 5.0,
        color: Colors.grey[300],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              _buildCoverImage(screenSize),
              Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 7.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          _buildProfileImage(),
                          SizedBox(height: 15),
                          _buildFullName(),
                        ],
                      ),
                      _buildEditButton(context),
                    ],
                  ),
                ],
              ),
            ],
          ),
          _buildDivider(),
          _buildAbout(context),
          _buildDivider(),
          _buildInsights(context),
          _buildDivider(),
          _buildLists(context),
          _buildDivider(),
          _buildAccount(context),
          _buildDivider(),
        ],
      ),
    );
  }
}
