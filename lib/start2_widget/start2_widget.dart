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
  int _ans;
  String _inputEq = "";
  String _opeflag;
  String _ansText = "";
  bool _isEnabledNum = true;
  bool _isEnabledOperator = false;
  String carnum = "1234";

  void _upDate(String text, String type) {
    setState(() {
      _inputEq += text;
      _isEnabledNum = !_isEnabledNum;
      _isEnabledOperator = !_isEnabledOperator;
      if (_ans == null) {
        print(text);
        _ans = int.parse(text);
      } else if (type == 'ope') {
        _opeflag = text;
        print(_opeflag);
      } else if (type == 'num')  {
        print(int.parse(text));
        if (_opeflag == '+') {
          print(_opeflag);
          _ans = _ans + int.parse(text);
        } else if (_opeflag == '-') {
          print(_opeflag);
          _ans = _ans - int.parse(text);
        } else if (_opeflag == '×') {
          print(_opeflag);
          _ans = _ans * int.parse(text);
        } else if (_opeflag == '÷') {
          print(_opeflag);
          _ans = _ans ~/ int.parse(text);
        }
      }
      _ansText = _ans.toString();
    });
  }
  
  void _eraseEquation() {
    print(_isEnabledNum);
    setState(() {
      _inputEq = "";
      _isEnabledNum = true;
      _isEnabledOperator = false;
      _ans = null;
    });
  }

  void _checkEquation(BuildContext context) {
    if (_ans == 10) {
      _showResult(context,true);
      setState(() {
        carnum = "1098";
      });
    } else {
      _showResult(context,false);
    }
    _eraseEquation();
  }

  _showResult (BuildContext context,bool result) async{
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) => 
      Align(alignment: Alignment.center,child: 
      result ? Image.asset(
          "assets/images/hanamaru.png",
          fit: BoxFit.cover) 
          : Image.asset(
          "assets/images/inu_batsu.png",
          fit: BoxFit.cover),
      ),
    );
    overlayState.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 1));
    overlayEntry.remove();
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
        onPressed: !_isEnabledNum ? null : () => _upDate(text,"num"),
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
        ),
      ),
      onPressed:  !_isEnabledOperator ? null : () => _upDate(text,"ope"),
    )
  );
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
                      "横浜 530\nせ　$carnum",
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
                keyBoardNum(context,carnum.substring(0,1)),
                keyBoardNum(context,carnum.substring(1,2)),
                keyBoardNum(context,carnum.substring(2,3)),
                keyBoardNum(context,carnum.substring(3,4)),
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
                  Text(_ansText,
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
                onPressed: () => _checkEquation(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}