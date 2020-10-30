import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return 
                      Center(
                        child: Container(
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
                      );
        }
    );
  }
}