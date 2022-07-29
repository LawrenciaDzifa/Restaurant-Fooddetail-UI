import 'package:flutter/material.dart';
import 'package:restaurant_ui/screens/home.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant',
      home: MainHome(),
    );
  }
}
