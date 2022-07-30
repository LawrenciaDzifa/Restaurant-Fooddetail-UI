import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_ui/providers/cart_provider.dart';
import 'package:restaurant_ui/screens/home.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant',
        home: MainHome(),
      ),
    );
  }
}
