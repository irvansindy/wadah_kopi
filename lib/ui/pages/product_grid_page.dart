// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/widget/product_grid.dart';
// import 'package:wadah_kopi/ui/widget/product_grid.dart';

class ProductGridPage extends StatelessWidget {
  const ProductGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 10) / 2;
    // final double itemWidth = size.width / 2;

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
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    Icons.list_rounded,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/productList');
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }

    // List<String> widgetList = ['A', 'B', 'C'];

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: whiteColor2,
      appBar: appBar(),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 29,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: const [
            ProductGrid(),
            ProductGrid(),
            ProductGrid(),
            ProductGrid(),
            ProductGrid(),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
