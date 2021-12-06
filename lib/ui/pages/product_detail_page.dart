// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      // ignore: avoid_unnecessary_containers
      return Container(
        width: double.infinity,
        height: 490,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          image: const DecorationImage(
            image: AssetImage('assets/image4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: whiteColor2,
                      ),
                      Icon(
                        Icons.shopping_basket,
                        color: whiteColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget detailContent() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Coffee Latte Art',
              style: primaryTextStyle.copyWith(
                fontSize: 28,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp. 25,000',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.star,
                  color: goldColor,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: goldColor,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: goldColor,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: goldColor,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: goldColor,
                  size: 18,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '4.5',
                  style: goldTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Kopi yang dicampur dengan susu dan memiliki lapisan busa yang tipis di bagian atasnya dan dibentuk secantik mungkin. Perbandingan antara susu dengan kopi pada caffè latte adalah 2:1.',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget actionButton() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 165,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: transparentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                child: Text(
                  'Buy Now',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 165,
              height: 60,
              child: TextButton(
                onPressed: () {},
                // => Navigator.pushNamedAndRemoveUntil(
                //     context, '/register', (route) => false),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: ListView(
                children: [
                  content(),
                  detailContent(),
                  actionButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
