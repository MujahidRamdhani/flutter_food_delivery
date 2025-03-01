import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheeseburger",
        description: "A juicy cheeseburger with lettuce, tomato, and mayo",
        price: 0.99,
        imagePath: "assets/burger/burger_1.jpg",
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99),
        ]),

    Food(
        name: "Veggie Burger",
        description:
            "A healthy veggie burger with spinach, tomatoes, and lettuce",
        price: 0.99,
        imagePath: "assets/burger/burger_2.jpg",
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99),
        ]),

    Food(
        name: "Chicken Burger",
        description: "A juicy chicken burger with lettuce, tomato, and mayo",
        price: 0.99,
        imagePath: "assets/burger/burger_3.jpg",
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99),
        ]),

    Food(
        name: "Veggie Burger",
        description:
            "A healthy veggie burger with spinach, tomatoes, and lettuce",
        price: 0.99,
        imagePath: "assets/burger/burger_4.jpg",
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99),
        ]),

    //pizzas
    Food(
        name: "Margherita Pizza",
        description:
            "A classic pizza with tomato sauce, mozzarella cheese, and basil",
        price: 9.99,
        imagePath: "assets/pizza/pizza_1.jpg",
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Pepperoni", price: 1.99),
          Addon(name: "Mushrooms", price: 0.99),
        ]),

    Food(
        name: "Pepperoni Pizza",
        description:
            "A pizza with tomato sauce, mozzarella cheese, and pepperoni",
        price: 9.99,
        imagePath: "assets/pizza/pizza_2.jpg",
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Pepperoni", price: 1.99),
          Addon(name: "Mushrooms", price: 0.99),
        ]),

    Food(
        name: "Hawaiian Pizza",
        description:
            "A pizza with tomato sauce, mozzarella cheese, ham, and pineapple",
        price: 9.99,
        imagePath: "assets/pizza/pizza_3.jpg",
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Pepperoni", price: 1.99),
          Addon(name: "Mushrooms", price: 0.99),
        ]),

    Food(
        name: "Veggie Pizza",
        description:
            "A pizza with tomato sauce, mozzarella cheese, and vegetables",
        price: 2.99,
        imagePath: "assets/pizza/pizza_4.jpg",
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Pepperoni", price: 1.99),
          Addon(name: "Mushrooms", price: 0.99),
        ]),

    //dessert
    Food(
        name: "Chocolate Cake",
        description:
            "A rich and decadent chocolate cake with chocolate frosting",
        price: 5.99,
        imagePath: "assets/dessert/dessert_1.jpg",
        category: FoodCategory.desert,
        availableAddons: [
          Addon(name: "Extra chocolate frosting", price: 0.99),
          Addon(name: "Strawberry frosting", price: 2.99),
          Addon(name: "Vanilla frosting", price: 1.99),
        ]),

    Food(
        name: "Strawberry Cake",
        description:
            "A light and refreshing strawberry cake with strawberry frosting",
        price: 5.99,
        imagePath: "assets/dessert/dessert_2.jpg",
        category: FoodCategory.desert,
        availableAddons: [
          Addon(name: "Extra strawberry frosting", price: 0.99),
          Addon(name: "Chocolate frosting", price: 2.99),
          Addon(name: "Vanilla frosting", price: 1.99),
        ]),

    Food(
        name: "Vanilla Cake",
        description: "A classic vanilla cake with vanilla frosting",
        price: 5.99,
        imagePath: "assets/dessert/dessert_3.jpg",
        category: FoodCategory.desert,
        availableAddons: [
          Addon(name: "Extra vanilla frosting", price: 0.99),
          Addon(name: "Chocolate frosting", price: 2.99),
          Addon(name: "Strawberry frosting", price: 1.99),
        ]),

    Food(
        name: "Blueberry Muffin",
        description: "A light and fluffy blueberry muffin with blueberry jam",
        price: 3.99,
        imagePath: "assets/dessert/dessert_4.jpg",
        category: FoodCategory.desert,
        availableAddons: [
          Addon(name: "Extra vanilla frosting", price: 0.99),
          Addon(name: "Chocolate frosting", price: 2.99),
          Addon(name: "Strawberry frosting", price: 1.99),
        ]),

    // drinks
    Food(
        name: "Coca-Cola",
        description: "A refreshing cola drink",
        price: 2.99,
        imagePath: "assets/drink/drink_1.jpg",
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: "Extra ice", price: 0.99),
          Addon(name: "Extra sugar", price: 2.99),
          Addon(name: "Eextra lemon", price: 1.99),
        ]),

    Food(
        name: "Sprite",
        description: "A refreshing sprite drink",
        price: 2.99,
        imagePath: "assets/drink/drink_2.jpg",
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: "Extra ice", price: 0.99),
          Addon(name: "Extra sugar", price: 2.99),
          Addon(name: "Eextra lemon", price: 1.99),
        ]),

    Food(
        name: "Fanta",
        description: "A refreshing fanta drink",
        price: 2.99,
        imagePath: "assets/drink/drink_3.jpg",
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: "Extra ice", price: 0.99),
          Addon(name: "Extra sugar", price: 2.99),
          Addon(name: "Eextra lemon", price: 1.99),
        ]),

    Food(
        name: "Water",
        description: "A refreshing water drink",
        price: 0.99,
        imagePath: "assets/drink/drink_4.jpg",
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: "Extra ice", price: 0.99),
          Addon(name: "Extra sugar", price: 2.99),
          Addon(name: "Eextra lemon", price: 1.99),
        ]),

    //salad
    Food(
        name: "Caesar Salad",
        description:
            "A classic caesar salad with romaine lettuce, croutons, and parmesan cheese",
        price: 8.99,
        imagePath: "assets/dessert/dessert_1.jpg",
        category: FoodCategory.salad,
        availableAddons: [
          Addon(name: "Extra croutons", price: 1.99),
          Addon(name: "Extra parmesan cheese", price: 2.99),
          Addon(name: "Extra romaine lettuce", price: 0.99),
        ]),

    Food(
        name: "Mediterranean Salad",
        description:
            "A Mediterranean salad with olives, tomatoes, and feta cheese",
        imagePath: "assets/dessert/dessert_2.jpg",
        price: 9.99,
        category: FoodCategory.salad,
        availableAddons: [
          Addon(name: "Extra croutons", price: 1.99),
          Addon(name: "Extra parmesan cheese", price: 2.99),
          Addon(name: "Extra romaine lettuce", price: 0.99),
        ]),
  ];
  /*
   
   G E T T E R S

   */
  List<Food> get menu => _menu;
  /*

   O P E R A T I O N S

   */

  // user cart
  List<CartItem> _cart = [];
  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already for this food
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food is already in the cart
      bool isSameFood = item.food == food;

      // check if the addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameAddons;
    });
    // if item already exists, increase it
    if (cartItem != null) {
      cartItem.quantity += 1;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
          CartItem(quantity: 1, food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity -= 1;
      }
      else{
        _cart.removeAt(cartIndex);
      }
      
    }
      notifyListeners();
  }

  // get total price of cart
  double getTotalPrice(){
    double total = 0.0;
    for(CartItem cartItem in _cart){
      double itemToal = cartItem.food.price;
      for(Addon addon in cartItem.selectedAddons){
        itemToal += addon.price;
      }
      total += itemToal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;
    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  /*

   H E L P E R S

   */
}
