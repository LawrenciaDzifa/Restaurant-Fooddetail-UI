import 'package:flutter/material.dart';
import 'package:restaurant_ui/constants.dart';

class Cart extends StatefulWidget {
  // const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: EdgeInsets.only(right: 20),
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(children: [
                            Image.asset('assets/images/sandwich1.jpg'),
                            IconButton(
                              onPressed: () {
                                print('Item removed from cart');
                              },
                              icon: Icon(Icons.close),
                            ),
                          ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Egg Sufer',
                                    style: cartTextStyle,
                                  ),
                                  SizedBox(width: 40),
                                  Text(
                                    '4.99\$',
                                    style: cartTextStyle,
                                  ),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                          print('1 item removed');
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline,
                                          size: 25,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                          print('1 item added');
                                        },
                                        icon: Icon(
                                          Icons.add_circle_outline,
                                          size: 25,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: buttonTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
