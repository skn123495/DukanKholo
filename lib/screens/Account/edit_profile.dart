import 'package:DukanKholo/widgets/text-input.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Widget _buildDivider() {
    return SizedBox(
      child: new Container(
        margin: new EdgeInsetsDirectional.only(top: 15.0, bottom: 15.0),
        height: 2.0,
        color: Colors.grey[300],
      ),
    );
  }

  Widget _buildHeading(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: 20,
        left: 10,
        bottom: 10,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            "Edit public profile",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildEditName(context) {
    return Column(
      children: [
        TextInput(
          title: "Your public name",
          placeholder: "Username",
          secureText: false,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: new Text(
            "This will not change the name associated with your account.",
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget _buildEditProfile(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: new Text(
            "Your public information (Optional).",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                fontSize: 18),
          ),
        ),
        new TextInput(
          title: "Bio",
          placeholder: "Share little something about you",
          secureText: false,
        ),
        new TextInput(
          title: "Occupation",
          placeholder: "Share your current job",
          secureText: false,
        ),
        new TextInput(
          title: "Location",
          placeholder: "Share where you live",
          secureText: false,
        ),
        _buildDivider(),
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: new Text(
            "Add links to your public profile.",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                fontSize: 18),
          ),
        ),
        new TextInput(
          title: "Facebook",
          placeholder: "https://www.facebook.com/...",
          secureText: false,
        ),
        new TextInput(
          title: "Twitter",
          placeholder: "https://www.twitter.com/...",
          secureText: false,
        ),
        new TextInput(
          title: "Instagram",
          placeholder: "https://www.instagram.com/...",
          secureText: false,
        ),
        new TextInput(
          title: "Youtube",
          placeholder: "https://www.youtube.com/...",
          secureText: false,
        ),
      ],
    );
  }

  Widget _buildEditButton(context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width - 20,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.black,
            padding: EdgeInsets.all(12.0),
            onPressed: () {},
            child: Text("Save changes".toUpperCase(),
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: Colors.white,
                )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

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
          children: [
            _buildHeading(context),
            _buildEditName(context),
            _buildDivider(),
            _buildEditProfile(context),
            _buildEditButton(context)
          ],
        ),
      ),
    );
  }
}
