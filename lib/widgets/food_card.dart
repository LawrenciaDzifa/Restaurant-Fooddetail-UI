import 'package:flutter/material.dart';
import 'package:restaurant_ui/modules/food_bank.dart';
import 'package:restaurant_ui/screens/food_details.dart';

class Meal extends StatefulWidget {
  // const Meal({this.food});
  // final Food food;
  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
  List<Food> allFoods = getAllFoods();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: allFoods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => FoodDetails()));
              },
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Column(children: [
                      Stack(
                        children: [
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage(allFoods[index].image),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                allFoods[index].price,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  // fontFamily: 'Poppins',
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        color: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    allFoods[index].name,
                                    style: TextStyle(
                                      // fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ]),
                  )));
        });
  }
}
