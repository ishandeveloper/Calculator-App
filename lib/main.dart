import 'package:flutter/material.dart';
import 'homepage.dart';

// void main() => runApp(MyApp());

void main()=>runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Calculator",
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}