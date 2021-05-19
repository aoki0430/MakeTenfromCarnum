/*
*  start1_widget.dart
*  Carnum
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:carnum/start2_widget/start2_widget.dart';
import 'package:flutter/material.dart';


class Start1Widget extends StatelessWidget {

  void onButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) =>ProbremView()));
  
  void onPageControlValueChanged(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 232, 214),
        ),
        child: Column(
          children: [
            Container(
              height: deviceHeight*0.6,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: deviceHeight*0.1,
                    right: 0,
                    child: Image.asset(
                      "assets/images/carfront-3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: deviceHeight*0.49,
                    child: Text(
                      "横浜 530\nせ　12-34",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 83, 32),
                        fontFamily: "Trebuchet MS",
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 100,
              child: SizedBox(
                height: deviceHeight * 0.08,
                width:  deviceWidth * 0.7,
                child: ElevatedButton(child: 
                  Text('ひまをつぶす',
                      style: TextStyle(
                      color: Color.fromARGB(255, 5, 83, 32),
                      fontFamily: "Trebuchet MS",
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      ),
                    ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () => this.onButtonPressed(context),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}