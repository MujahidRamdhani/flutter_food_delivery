import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy cheeseburger with lettuce, tomato, and mayo",
      price: 0.99,
      imagePath: "assets/burger_1.png",
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.99),
      ]
    ),

    Food(
      name: "Veggie Burger",
      description: "A healthy veggie burger with spinach, tomatoes, and lettuce",
      price: 0.99,
      imagePath: "assets/burger_2.png",
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.99),
      ]
    ),

    Food(
      name: "Chicken Burger",
      description: "A juicy chicken burger with lettuce, tomato, and mayo",
      price: 0.99,
      imagePath: "assets/burger_3.png",
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.99),
      ]
    ),

    Food(
      name: "Veggie Burger",
      description: "A healthy veggie burger with spinach, tomatoes, and lettuce",
      price: 0.99,
      imagePath: "assets/burger_4.png",
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.99),
      ]
    ),

    //pizzas
    Food(
      name: "Margherita Pizza",
      description: "A classic pizza with tomato sauce, mozzarella cheese, and basil",
      price: 9.99,
      imagePath: "assets/pizza_1.png",
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Pepperoni", price: 1.99),
        Addon(name: "Mushrooms", price: 0.99),
      ]
    ),

    Food(
      name: "Pepperoni Pizza",
      description: "A pizza with tomato sauce, mozzarella cheese, and pepperoni",
      price: 9.99,
      imagePath: "assets/pizza_2.png",
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Pepperoni", price: 1.99),
        Addon(name: "Mushrooms", price: 0.99),
      ]
    ),

    Food(
      name: "Hawaiian Pizza",
      description: "A pizza with tomato sauce, mozzarella cheese, ham, and pineapple",
      price: 9.99,
      imagePath: "assets/pizza_3.png",
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Pepperoni", price: 1.99),
        Addon(name: "Mushrooms", price: 0.99),
      ]
    ),

    Food(
      name: "Veggie Pizza",
      description: "A pizza with tomato sauce, mozzarella cheese, and vegetables",
      price: 2.99,
      imagePath: "assets/pizza_4.png",
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Pepperoni", price: 1.99),
        Addon(name: "Mushrooms", price: 0.99),
      ]
    ),

    //dessert
    Food(
      name: "Chocolate Cake",
      description: "A rich and decadent chocolate cake with chocolate frosting",
      price: 5.99,
      imagePath: "assets/dessert_1.png",
      category: FoodCategory.desert,
      availableAddons: [
        Addon(name: "Extra chocolate frosting", price: 0.99), 
        Addon(name: "Strawberry frosting", price: 2.99),
        Addon(name: "Vanilla frosting", price: 1.99),
      ]
    ),

    Food(
      name: "Strawberry Cake",
      description: "A light and refreshing strawberry cake with strawberry frosting",
      price: 5.99,
      imagePath: "assets/dessert_2.png",
      category: FoodCategory.desert,
      availableAddons: [
        Addon(name: "Extra strawberry frosting", price: 0.99), 
        Addon(name: "Chocolate frosting", price: 2.99),
        Addon(name: "Vanilla frosting", price: 1.99),
      ]
    ),

    Food(
      name: "Vanilla Cake",
      description: "A classic vanilla cake with vanilla frosting",
      price: 5.99,
      imagePath: "assets/dessert_3.png",
      category: FoodCategory.desert,
      availableAddons: [
        Addon(name: "Extra vanilla frosting", price: 0.99), 
        Addon(name: "Chocolate frosting", price: 2.99),
        Addon(name: "Strawberry frosting", price: 1.99),
      ]
    ),

    Food(
      name: "Blueberry Muffin",
      description: "A light and fluffy blueberry muffin with blueberry jam",
      price: 3.99,
      imagePath: "assets/dessert_4.png",
      category: FoodCategory.desert,
      availableAddons: [
         Addon(name: "Extra vanilla frosting", price: 0.99), 
         Addon(name: "Chocolate frosting", price: 2.99),
         Addon(name: "Strawberry frosting", price: 1.99),
      ]
    ),

    
    // drinks
    Food(
      name: "Coca-Cola",
      description: "A refreshing cola drink",
      price: 2.99,
      imagePath: "assets/drink_1.png",
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.99),
        Addon(name: "Extra sugar", price: 2.99),
        Addon(name: "Eextra lemon", price: 1.99),
      ]
    ),

     Food(
      name: "Sprite",
      description: "A refreshing sprite drink",
      price: 2.99,
      imagePath: "assets/drink_2.png",
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.99),
        Addon(name: "Extra sugar", price: 2.99),
        Addon(name: "Eextra lemon", price: 1.99),
      ]
    ),

     Food(
      name: "Fanta",
      description: "A refreshing fanta drink",
      price: 2.99,
      imagePath: "assets/drink_3.png",
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.99),
        Addon(name: "Extra sugar", price: 2.99),
        Addon(name: "Eextra lemon", price: 1.99),
      ]
    ),

     Food(
      name: "Water",
      description: "A refreshing water drink",
      price: 0.99,
      imagePath: "assets/drink_4.png",
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "Extra ice", price: 0.99),
        Addon(name: "Extra sugar", price: 2.99),
        Addon(name: "Eextra lemon", price: 1.99),
      ]
    ),

    //salad
    Food(
      name: "Caesar Salad",
      description: "A classic caesar salad with romaine lettuce, croutons, and parmesan cheese",
      price: 8.99,
      imagePath: "assets/dessert_1.png",
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra croutons", price: 1.99),
        Addon(name: "Extra parmesan cheese", price: 2.99),
        Addon(name: "Extra romaine lettuce", price: 0.99),
      ]
    ),

    Food(
      name: "Mediterranean Salad", 
      description: "A Mediterranean salad with olives, tomatoes, and feta cheese",
      imagePath: "assets/dessert_2.png", 
      price: 9.99, 
      category: FoodCategory.salad, 
      availableAddons: [
        Addon(name: "Extra croutons", price: 1.99),
        Addon(name: "Extra parmesan cheese", price: 2.99),
        Addon(name: "Extra romaine lettuce", price: 0.99),
      ]
    ),
 ];
  /*
   
   G E T T E R S

   */
   List<Food> get menu => _menu;
   /*

   O P E R A T I O N S

   */
   // add to cart 

   // remove from cart

   // get total price of cart 

   // get total number of items in cart

   // clear cart 

   /*

   H E L P E R S

   */
  
     
 
}
