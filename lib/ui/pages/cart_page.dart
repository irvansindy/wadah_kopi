import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/widget/cart_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize appBar() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
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
          title: Text(
            'Your Cart',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18.0,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        child: Column(
          children: const [
            CartTile(),
            CartTile(),
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
            content(),
          ],
        ),
      ),
    );
  }
}
