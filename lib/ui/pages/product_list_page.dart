// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/widget/product_tile.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PreferredSize appBar() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          child: Center(
            child: AppBar(
              backgroundColor: whiteColor2,
              elevation: 0.5,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: primaryColor,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              title: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    hintText: 'What are you craving?',
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    hintStyle: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.border_all_rounded,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget productList() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor2,
      appBar: appBar(),
      body: SafeArea(
        child: ListView(
          children: [
            productList(),
          ],
        ),
      ),
    );
  }
}
