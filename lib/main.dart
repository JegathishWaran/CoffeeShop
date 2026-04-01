import 'package:coffeshop/Pages/HomePage.dart';
import 'package:coffeshop/modules/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CoffeeShop(),
      builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
      
      );
  }
}
