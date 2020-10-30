import 'package:flutter/material.dart';
import 'package:restaurant_ui/widgets/food_card.dart';
import 'package:restaurant_ui/widgets/food_menu.dart';


class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
backgroundColor: Colors.grey[100],
          body: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    icon: Icon(
                      Icons.menu_outlined,
                      color: Colors.black,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                    ),
                    onPressed: null),
              ]),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Food Menu',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/burger.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/pizza.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/noodles.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/meat.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/drink.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                      SizedBox(width: 30.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          'assets/images/burger.png',
                          fit: BoxFit.scaleDown,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold)),
                    IconButton(
                        icon: Icon(
                          Icons.sort_outlined,
                          color: Colors.black,
                        ),
                        onPressed: null)
                  ],
                ),
              ),
              Expanded(child: Meal())
            ],
          ),
        ),
      ),
    );
  }
}
