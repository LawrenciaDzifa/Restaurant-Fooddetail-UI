import 'package:flutter/material.dart';
import 'package:restaurant_ui/screens/food_details.dart';

class Meal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(Context) => Food_details()));
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/sandwich1.jpg',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 260, top: 10),
                        padding: EdgeInsets.only(top: 10, left: 10),
                        height: 40.0,
                        width: 70.0,
                        child: Text('4.99\$',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                fontFamily: 'Poppins')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 170.0, bottom: 10.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Egg Surfer',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_outline,
                                      color: Colors.amber,
                                    ),
                                    Text('4.6',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            fontFamily: 'Poppins')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 210.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0)),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(left: 15, bottom: 40),
                              child: Text('Yummy meal you should get',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
