import 'package:flutter/material.dart';
import 'package:restaurant_ui/modules/food_bank.dart';
import 'package:restaurant_ui/widgets/food_card.dart';
import 'package:restaurant_ui/widgets/food_menu.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List<Food> allFoods = getAllFoods();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search, color: Colors.black))
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      // fontFamily: 'Poppins',
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Meal())
          ],
        ),
      ),
    );
  }
}
