/*
Container(
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Image.network(
              'http://c.hiphotos.baidu.com/baike/s%3D235/sign=4e9e519417950a7b713549c73fd0625c/6a600c338744ebf818da6e9dd3f9d72a6159a7ec.jpg',
              fit: BoxFit.cover,
            ),
            Positioned(
                right: 8.0,
                bottom: 8.0,
                child: CountButtonView(
                  initialCount: 0,
                  onChange: (count) {

                  },
                )),
          ],
        ));
*/

import 'package:flutter/material.dart';

typedef void CountButtonClickCallBack(int count);

class CountButtonView extends StatefulWidget {
  final int initialCount;
  final CountButtonClickCallBack onChange;
  CountButtonView({this.initialCount, this.onChange});

  @override
  _CountButtonViewState createState() => _CountButtonViewState();
}

class _CountButtonViewState extends State<CountButtonView> {
  int count = 1;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  void decreaseCount() {
    setState(() {
      if (count != 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 44.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: GestureDetector(
                      onTap: () {
                        decreaseCount();
                      },
                      child: Container(
                          width: 40.0,
                          child: Center(
                              child: Icon(Icons.remove,
                                  color: Colors.grey[600])))),
                ),
                Container(
                  child: Center(
                      child: Text(
                    '$count',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: GestureDetector(
                      onTap: () {
                        increaseCount();
                      },
                      child: Container(
                          width: 40.0,
                          child: Center(
                              child:
                                  Icon(Icons.add, color: Colors.grey[600])))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
