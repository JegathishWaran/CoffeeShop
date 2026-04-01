import 'package:coffeshop/Pages/cart_page.dart';
import 'package:coffeshop/Pages/shop_page.dart';
import 'package:coffeshop/components/bottom_nav_.dart';
import 'package:coffeshop/const.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int selectedIndex = 0;

  void navigateBottomBar(int index) {
  
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [ShopPage(), CartPage()];
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
