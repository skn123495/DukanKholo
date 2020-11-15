import 'package:DukanKholo/constants.dart';
import 'package:DukanKholo/size_config.dart';

import 'package:flutter/material.dart';

class Details {
  final String id;
  final String title;
  final String amount;
  // final DateTime date;

  Details({
    @required this.id,
    @required this.title,
    @required this.amount,
    // @required this.date,
  });
}

class DataCard extends StatelessWidget {
  Widget _buildDivider() {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(right: 5, bottom: 5, top: 5),
        height: 2.0,
        color: PrimaryColor,
      ),
    );
  }

  Widget _buildEditButton(context) {
    return (InkWell(
      // onTap: () {},
      splashColor: PrimaryWhite,
      child: Container(
        decoration: BoxDecoration(
            color: PrimaryColor, borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          // tx.amount.toString(),
          'Deliver/Cancel',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: PrimaryWhite, fontSize: SizeConfig.getSW(context) * 0.025),
        ),
      ),
    ));
  }

  final List<Details> details = [
    Details(
      id: 't1',
      title: 'Monthly Attendence',
      amount: '500',
      // date: DateTime.now(),
    ),
    Details(
      id: 't2',
      title: 'Penality',
      amount: '504',
      // date: DateTime.now(),
    ),
    Details(
      id: 't3',
      title: 'Pending Amount Due To Deposite',
      amount: '504',
      // date: DateTime.now(),
    ),
    Details(
      id: 't3',
      title: 'Penality Amount Due To Deposite',
      amount: '50',
      // date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.getSH(context) * 0.009),
            child: Column(
              children: <Widget>[
                Container(
                  width: SizeConfig.getSW(context) * 0.96,
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: PrimaryWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.5,
                        spreadRadius: 0.0,
                        offset:
                            Offset(0.4, 0.4), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: PrimaryColor),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      hintText: "Search for Products",
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(
                          vertical: SizeConfig.getSW(context) * 0.005),
                      width: SizeConfig.getSW(context) * 0.96,
                      decoration: BoxDecoration(
                        color: PrimaryWhite,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Icon(Icons.notifications,
                                      color: Colors.amber)),
                              Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '1) Rajesh Goyal (13) ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                SizeConfig.getSW(context) *
                                                    0.038),
                                      ),
                                      Text(
                                        'A-107 Netaji subash Palace ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                SizeConfig.getSW(context) *
                                                    0.038),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                          _buildDivider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Text('Premium Cow Milk (4502)'),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: PrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 1),
                                    child: Text(
                                      // tx.amount.toString(),
                                      'daily',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: PrimaryWhite,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.getSW(context) * 0.015,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Text('3 Liters'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: IntrinsicHeight(
                                child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ClipOval(
                                  child: Material(
                                    color: PrimaryColor, // button color
                                    child: InkWell(
                                      splashColor:
                                          PrimaryWhite, // inkwell color
                                      child: SizedBox(
                                          width:
                                              SizeConfig.getSW(context) * 0.085,
                                          height:
                                              SizeConfig.getSH(context) * 0.045,
                                          child: Icon(
                                            Icons.call,
                                            color: PrimaryWhite,
                                            size: SizeConfig.getSW(context) *
                                                0.050,
                                          )),
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 2.0,
                                  color: PrimaryColor,
                                ),
                                Text('Bar'),
                                VerticalDivider(
                                  thickness: 2.0,
                                  color: PrimaryColor,
                                ),
                                Text('Time-Slot'),
                                VerticalDivider(
                                  thickness: 2.0,
                                  color: PrimaryColor,
                                ),
                                Text(
                                  'Due 469',
                                  style: TextStyle(color: Colors.red),
                                ),
                                VerticalDivider(
                                  thickness: 2.0,
                                  color: PrimaryColor,
                                ),
                                _buildEditButton(context),
                              ],
                            )),
                          )
                        ],
                      )),
                ),
              ],
            )),
      ]),
    );
  }
}
