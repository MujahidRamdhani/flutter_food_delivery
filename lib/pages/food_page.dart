import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/model/food.dart';
import 'package:food_delivery/model/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initialize selected addons to be false
    for (var addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {


  // method to add to cart 
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // close the food page to back to home page
    Navigator.pop(context);
    
    // format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.selectedAddons.keys) {
      if(widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    // sccaffold UI
    Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // fodd Image
          Image.asset(widget.food.imagePath),
          Padding(
             padding: const EdgeInsets.all(25.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              // // food name
              Text(
               widget.food.name,
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold),
              ),
              
              const SizedBox(height: 5),
              // food price
              Text(
                '\$'+ widget.food.price.toString(),
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.primary),
               ),
                  
              // const SizedBox(height: 5),
              // food description
              Text(
                widget.food.description,
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,),
               ),
        
              // const SizedBox(height: 5),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
        
              // addons
              Text(
                "Add-ons",
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.inversePrimary),
               ),
                  
              // addons
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                    borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: widget.food.availableAddons.length,
                  itemBuilder: (context, index) {
                    //get Individual addon
                    Addon addon = widget.food.availableAddons[index];
                    //retrun
                    return CheckboxListTile(
                      title: Text(addon.name),
                      subtitle: Text('\$'+addon.price.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Theme.of(context).colorScheme.primary),
                                    ),
                      value: widget.selectedAddons[addon], 
                      onChanged: (bool ? value){
                        setState(() {
                          widget.selectedAddons[addon] = value!;
                        });
                      }
                    );
                  },
                ),
              ),
              ]),
          ),
        
          // button -> add to cart
          MyButton(
            text: "Add to Cart", 
            onTap: () => addToCart(widget.food, widget.selectedAddons),
          ),
          const SizedBox(height: 20),
          ],
        ),
      ),
    ),

    // back button
    SafeArea(
      child: Opacity(
        opacity: 0.7,
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_rounded, color: Theme.of(context).colorScheme.inversePrimary,)),
        ),
      )),
      ]
    );
  }
}
