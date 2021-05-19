/*
*  main.dart
*  Carnum
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:carnum/start1_widget/start1_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Start1Widget(),
    );
  }
}