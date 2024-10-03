import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangement_examples/utillitees.dart';

import 'home_page.dart';



void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

