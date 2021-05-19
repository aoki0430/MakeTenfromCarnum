/*
*  start2_widget.dart
*  Carnum
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:carnum/start3_widget/start3_widget.dart';
import 'package:flutter/material.dart';

class ProbremView extends StatefulWidget {
  @override
  ProbremViewState createState() => ProbremViewState();
}

class ProbremViewState extends State<ProbremView> {
  String _inputEq = "";
  int _correct = 0;
  bool _isEnabledNum = true;
  bool _isEnabledOperator = true;

  void _upDate(String text) {
    print("object");
    setState(() {
      _inputEq += text;
      _isEnabledNum = !_isEnabledNum;
      print(_isEnabledNum);
      _isEnabledOperator = !_isEnabledOperator;
    });
  }
  
  void _eraseEquation() {
    print(_isEnabledNum);
    setState(() {
      _inputEq = "";
      _isEnabledNum = true;
      _isEnabledOperator = false;
    });
  }

  void _checkEquation() {
    if (_inputEq == "") {
      setState((){
        _correct=1; //正解
      });
    } else if (_inputEq == "") {
      setState((){
        _correct=2; //不正解
      });
    } else if (_inputEq == "") {
      setState((){
        _correct=3; //error
      });
    }
  }

  void onButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Start3Widget()));
  
  Widget keyBoardNum(BuildContext context, String text) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceWidth/4,
      width: deviceWidth/4,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Color.fromARGB(220, 255, 255, 255)),
        child: Text(text,
          style: TextStyle(
            color: Color.fromARGB(255, 5, 83, 32),
            fontFamily: "Trebuchet MS",
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),),
          // onPressed: () => null,
        onPressed: !_isEnabledNum ? null : () => _upDate(text),
      )
    );
  }

  Widget keyBoardOperator(BuildContext context, String text) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  return Container(
    height: deviceWidth/4,
    width: deviceWidth/4,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Color.fromARGB(220, 255, 255, 255)),
      child: Text(text,
        style: TextStyle(
          color: Color.fromARGB(255, 5, 83, 32),
          fontFamily: "Trebuchet MS",
          fontWeight: FontWeight.w700,
          fontSize: 30,
        ),),
        // onPressed: () =>  !_isEnabledOperator ? null : () {
        //   _upDate(text);
        // }
        
        onPressed: !_isEnabledOperator ? null : () => _upDate(text),
    )
  );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    final String carnum = "1234";
    final List<String> carnumlist= [
      carnum.substring(0,1),
      carnum.substring(1,2),
      carnum.substring(2,3),
      carnum.substring(3,4),
    ];

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 232, 214),
        ),
        child: Column(
            children: [
              Stack(alignment: Alignment.center,
                children: [
                  Container(
                    height: deviceHeight*0.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(220, 255, 255, 255),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: SizedBox(
                      width: deviceWidth,
                      child:Image.asset(
                      "assets/images/carnumber.png",
                      fit: BoxFit.cover,
                    ),),
                  ),
                  Positioned(
                    top: deviceHeight * 0.11,
                    child: Text(
                      "横浜 530\nせ　12-34",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 83, 32),
                        fontFamily: "Trebuchet MS",
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    top: deviceHeight * 0.35,
                    child: Text(_inputEq,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 5, 83, 32),
                        fontFamily: "Trebuchet MS",
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    )
                  ),
                ],
              ), 
              SizedBox(height: deviceHeight*0.01,),
              Row(children: [
                keyBoardNum(context,carnumlist[0]),
                keyBoardNum(context,carnumlist[1]),
                keyBoardNum(context,carnumlist[2]),
                keyBoardNum(context,carnumlist[3]),
              ],),
              Row(children: [
                keyBoardOperator(context,"+"),
                keyBoardOperator(context,"-"),
                keyBoardOperator(context,"×"),
                keyBoardOperator(context,"÷"),
              ],),
              SizedBox(height: deviceHeight*0.02,),
              SizedBox(
                height: deviceHeight * 0.08,
                width:  deviceWidth * 0.7,
                child: ElevatedButton(child: 
                  Text('けす',
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
                onPressed: () => _eraseEquation(),
              ),
              ),
              SizedBox(height: deviceHeight*0.02,),
              SizedBox(
                height: deviceHeight * 0.08,
                width:  deviceWidth * 0.7,
                child: ElevatedButton(child: 
                  Text('できた！',
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
                onPressed: () => {},
              ),
              ),
          ],
        ),
      ),
    );
  }
}