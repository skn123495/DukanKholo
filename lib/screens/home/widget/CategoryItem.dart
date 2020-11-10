import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;
  final String textPass;

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CategoryItem(
      {@required this.backgroundColor,
      @required this.size,
      @required this.icon,
      @required this.margin,
      @required this.padding,
      @required this.textPass,
      this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(size),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                ),
              ]),
          padding: padding,
          margin: margin,
          child: Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(textPass),
      ],
    );
  }
}
