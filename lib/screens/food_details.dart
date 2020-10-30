import 'package:flutter/material.dart';
import 'package:restaurant_ui/screens/home.dart';
import 'package:restaurant_ui/widgets/counter.dart';

class Food_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 1 / 2,
                child: Image.asset(
                  'assets/images/sandwich2.jpg',
                  fit: BoxFit.cover,
                ),
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
                      
                        onPressed: (){
                          Navigator.pop(context);
                        },


                      ),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: (){})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                      child: Row(
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
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Row(
                              children: [
                                Icon(Icons.star_outline, color: Colors.amber),
                                Text(
                                  '4.6',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. tempor incididunt ut labore et dolore magna aliqua',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.2,
                            height: 1.3),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [CountButtonView()],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.only(top:30.0, left:20.0,right:10.0),
                          width: MediaQuery.of(context).size.width *0.7,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              ), 
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.only(top:30.0, right:6.0),
                          width: MediaQuery.of(context).size.width *0.15,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Icon(
                              Icons.tune_outlined
                            ),
                          ),
                        )
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
