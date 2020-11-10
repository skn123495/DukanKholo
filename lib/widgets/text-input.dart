import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String title;
  final String placeholder;
  final bool secureText;

  TextInput({
    @required this.title,
    @required this.placeholder,
    @required this.secureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: new Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          new SizedBox(
            height: 5,
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(8.0),
              child: TextFormField(
                obscureText: secureText,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: placeholder,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10.0),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.white, width: 3.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
