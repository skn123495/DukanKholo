import 'package:flutter/material.dart';

class InsightCard extends StatelessWidget {
  final String value;
  final String title;
  final Color color;

  InsightCard({
    @required this.value,
    @required this.title,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Card(
        elevation: 2,
        child: ClipPath(
          child: Container(
            padding: EdgeInsets.all(15),
            height: 100,
            width: 140,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: color, width: 10.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Public',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
      ),
    );
  }
}
