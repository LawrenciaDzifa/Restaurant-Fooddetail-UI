import 'package:flutter/widgets.dart';
import 'package:restaurant_ui/model/food_bank.dart';

class CartProvider extends ChangeNotifier {
  List<Food> cartItems = [];
  addToCart(Food food) {
    cartItems.add(food);
    notifyListeners();
    print(cartItems.length);
  }
}
