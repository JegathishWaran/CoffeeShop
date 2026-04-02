import 'package:coffeshop/components/coffee_tile.dart';
import 'package:coffeshop/modules/coffee.dart';
import 'package:coffeshop/modules/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removeItemFromCard(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Payment is success."),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) =>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text("Your Car", style: TextStyle(fontSize: 20),),

            Expanded(child: ListView.builder(
              itemCount:value.userCart.length,
              itemBuilder: (context, index){
                Coffee eachCard = value.userCart[index];

                return CoffeeTile(coffee: eachCard, 
                onPressed: (){
                  removeItemFromCard(eachCard);
                }, 
                icon: Icon(Icons.delete));

            })),
          
            GestureDetector(
              onTap: payNow,
              child: Container(
                
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Pay Now", style: TextStyle(color: Colors.white), )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}