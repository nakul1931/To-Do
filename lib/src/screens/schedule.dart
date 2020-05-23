import 'package:TodoList/src/styles/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:TodoList/src/styles/text.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 20),
      color: AppColors.darkGrey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 30,
                ),
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.bars,
                      color: Colors.white,
                    ),
                    onPressed: null)
              ],
            ),
            Text(
              'Schedule',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  child: Text(
                    'Week',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                InkWell(
                  child: Text(
                    'Month',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  Text('8:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('9:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('10:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('11:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('12:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('13:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('14:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('15:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('16:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('17:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('18:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('19:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('20:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('21:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('22:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('23:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('24:00',
                                      style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('1:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('2:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('3:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('4:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('5:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('6:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                  Text('7:00', style: TextStyles.baseTextStyle),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Mon',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Yoga Class',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.purple),
                                      child: Center(
                                        child: Text(
                                          'Changes New Design',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Tue',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.orange),
                                      child: Center(
                                        child: Text(
                                          'School Meeting',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: Center(
                                        child: Text(
                                          'Try New Icon',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Wed',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.purple[300]),
                                      child: Center(
                                        child: Text(
                                          'Pay The Bills',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.pink),
                                      child: Center(
                                        child: Text(
                                          'Making user flow for a mobile app',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Thu',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Yoga Class',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Changes New Design',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Fri',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Yoga Class',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Changes New Design',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Sat',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Yoga Class',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Changes New Design',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Sun',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Yoga Class',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          'Changes New Design',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.baseTextStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
