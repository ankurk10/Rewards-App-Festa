import 'package:flutter/material.dart';
import 'package:rewards_app/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF075E54),
          colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E))),
      home: welcome_screen(),
    );
  }
}
