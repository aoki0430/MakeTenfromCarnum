/*
*  start3_widget.dart
*  Carnum
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';


class Start3Widget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 1326,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 323,
                    top: 938,
                    right: 322,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Container(
                            height: 176,
                            margin: EdgeInsets.only(right: 1),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 112, 112, 112),
                              ),
                            ),
                            child: Container(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 2,
                            height: 206,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 112, 112, 112),
                            ),
                            child: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 1050,
                          child: Image.asset(
                            "assets/images/carfront.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 273,
                            height: 6,
                            margin: EdgeInsets.only(top: 17),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 112, 112, 112),
                            ),
                            child: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 879,
                    child: Text(
                      "横浜 530\nせ　12-34",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 83, 32),
                        fontFamily: "Trebuchet MS",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1020,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "しき",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 83, 32),
                          fontFamily: "Trebuchet MS",
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1119,
                    right: 322,
                    child: Container(
                      width: 2,
                      height: 206,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 112, 112, 112),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 322,
                    top: 1120,
                    right: 323,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 94,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "1",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "+",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
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
                        Container(
                          width: 94,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "2",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "-",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
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
                        Spacer(),
                        Container(
                          width: 94,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "3",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "×",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
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
                        Container(
                          width: 94,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "4",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 94,
                                  height: 103,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(230, 255, 255, 255),
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromARGB(230, 112, 112, 112),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "÷",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 5, 83, 32),
                                            fontFamily: "Trebuchet MS",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 50,
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
                      ],
                    ),
                  ),
                  Positioned(
                    left: 337,
                    top: 846,
                    right: 337,
                    child: Image.asset(
                      "assets/images/hanamaru.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 267,
                height: 65,
                margin: EdgeInsets.only(bottom: 30),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 267,
                        height: 65,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(154, 3, 46, 28),
                              offset: Offset(0, 6),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/-4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      child: Text(
                        "10できた！",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 83, 32),
                          fontFamily: "Trebuchet MS",
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
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