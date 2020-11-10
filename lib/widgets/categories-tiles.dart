import 'package:flutter/material.dart';

class CategoriesTiles extends StatelessWidget {
  final String mainTitle;
  final IconData icon;

  CategoriesTiles({
    @required this.mainTitle,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(mainTitle),
        leading: Icon(icon),
        children: <Widget>[
          Center(
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                CategoriesList(
                    image:
                        'http://pngimg.com/uploads/iphone_11/iphone_11_PNG35.png',
                    title: 'Mobiles'),
                CategoriesList(
                    image:
                        'http://pngimg.com/uploads/computer_pc/computer_pc_PNG17494.png',
                    title: 'Computer & Accessories'),
                CategoriesList(
                    image:
                        'http://pngimg.com/uploads/microwave/microwave_PNG15745.png',
                    title: 'Microwave'),
                CategoriesList(
                    image:
                        'http://pngimg.com/uploads/web_camera/web_camera_PNG7968.png',
                    title: 'CCTV Camera')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  final String image;
  final String title;

  CategoriesList({
    @required this.image,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 15,
      margin: EdgeInsets.only(bottom: 5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(width: 1, color: Colors.grey[300]),
        ),
        color: Colors.white,
        elevation: 0.5,
        child: ListTile(
          title: Row(
            children: [
              Row(
                children: [
                  Image.network(
                    image,
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 80,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
