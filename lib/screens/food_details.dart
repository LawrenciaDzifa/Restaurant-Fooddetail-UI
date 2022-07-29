import 'package:flutter/material.dart';
import 'package:restaurant_ui/constants.dart';
import 'package:restaurant_ui/modules/food_bank.dart';
import 'package:restaurant_ui/screens/cart.dart';
import 'package:restaurant_ui/screens/home.dart';
import 'package:restaurant_ui/widgets/counter.dart';

class FoodDetails extends StatefulWidget {
  // final Food food;
  // const FoodDetails({required this.food});
  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 1 / 2,
              child: Image.asset(
                'assets/images/sandwich2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.close_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Egg Surfer',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline),
                                color: Colors.amber),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. tempor incididunt ut labore et dolore magna aliqua',
                      style: descriptionTextStyle,
                    ),
                    sizedBox_50,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountButtonView(),
                        // SizedBox(width: 60.0),
                        Container(
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          margin: EdgeInsets.only(right: 6.0),
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            '\$4.99',
                            style: priceTextStyle,
                          )),
                        )
                      ],
                    ),
                    sizedBox_30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => Cart()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            margin: EdgeInsets.only(
                                top: 20.0, left: 20.0, right: 10.0),
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: buttonTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
