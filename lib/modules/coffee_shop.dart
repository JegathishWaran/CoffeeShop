import 'package:coffeshop/modules/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {

  List<Coffee> _shop = [
     Coffee(
      name: "Long Black",
      price: "4.10",
      imagePath: "lib/images/black.png"
      ),
      Coffee(
      name: "Latte",
      price: "4.20",
      imagePath: "lib/images/coffee-cup.png"
      ),
      Coffee(
      name: "Espresso",
      price: "3.50",
      imagePath: "lib/images/coffee.png"
      ),
      Coffee(
      name: "Long Black",
      price: "5.10",
      imagePath: "lib/images/hot-chocolate.png"
      ),
  ];


  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }


}