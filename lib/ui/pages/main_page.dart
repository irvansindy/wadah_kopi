// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/pages/cart_page.dart';
import 'package:wadah_kopi/ui/pages/detail_transaction.dart';
import 'package:wadah_kopi/ui/pages/home_page.dart';
// import 'package:wadah_kopi/ui/pages/order_history_page.dart';
// import 'package:wadah_kopi/ui/pages/transaction_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPage(),
    // TransactionPage(),
    // OrderHistoryPage(),
    DetailTransaction(),
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
      backgroundColor: whiteColor2,
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
        selectedItemColor: whiteColor2,
        onTap: _onItemTapped,
      ),
    );
  }
}
