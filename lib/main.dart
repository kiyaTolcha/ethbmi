import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICal());

class BMICal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
          primaryColor:Color(0xff0a0e21) ,
          scaffoldBackgroundColor: Color(0xff0a0f23),
      ),
      home: InputPage(),
    );
  }
}