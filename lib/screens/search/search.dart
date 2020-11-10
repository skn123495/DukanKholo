import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  var searchSuggestion =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14);
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
        title: Container(
          height: 40,
          child: TextField(
            autofocus: true,
            style: new TextStyle(
              color: Colors.black,
            ),
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: new Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              hintText: "Search...",
              hintStyle: new TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              trailing: Transform(
                child: Icon(Icons.arrow_back),
                alignment: FractionalOffset.center,
                transform: new Matrix4.identity()
                  ..rotateZ(45 * 3.1415927 / 180),
              ),
              title: Text(
                'Western Dress for men',
                style: searchSuggestion,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              trailing: Transform(
                child: Icon(Icons.arrow_back),
                alignment: FractionalOffset.center,
                transform: new Matrix4.identity()
                  ..rotateZ(45 * 3.1415927 / 180),
              ),
              title: Text(
                'Western Dress for women',
                style: searchSuggestion,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
