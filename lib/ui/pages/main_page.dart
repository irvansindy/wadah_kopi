// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/pages/cart_page.dart';
// import 'package:wadah_kopi/ui/pages/product_detail_page.dart';
import 'package:wadah_kopi/ui/pages/product_grid_page.dart';
// import 'package:wadah_kopi/ui/pages/product_list_page.dart';
import 'package:wadah_kopi/ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPage(),
    ProductGridPage(),
  ];

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: MainPage._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // ignore: dead_code
              color: _selectedIndex == 0 ? whiteColor : fourthColor,
            ),
            label: _selectedIndex == 0 ? 'Home' : '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: _selectedIndex == 1 ? whiteColor : fourthColor,
            ),
            label: _selectedIndex == 1 ? 'Cart' : '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt,
              color: _selectedIndex == 2 ? whiteColor : fourthColor,
            ),
            label: _selectedIndex == 2 ? 'Trans' : '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: whiteColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
