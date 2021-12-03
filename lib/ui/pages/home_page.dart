// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/widget/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wadah Kopi',
                  style: thirdTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'What are you craving?',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget favoriteItem() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          left: 15,
          top: 10,
          bottom: 10,
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Favorite Item',
                style: thirdTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                  letterSpacing: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    width: 210,
                    height: 160,
                    margin: const EdgeInsets.only(top: 15, right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 210,
                    height: 160,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/image2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      );
    }

    Widget filterChips() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          left: 15,
          top: 10,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ChoiceChip(
                label: Text(
                  'All',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                selected: true,
                selectedColor: secondaryColor,
                onSelected: (bool selected) {},
              ),
              const SizedBox(width: 10),
              ChoiceChip(
                label: Text(
                  'Coffee',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                selected: true,
                selectedColor: secondaryColor,
                onSelected: (bool selected) {},
              ),
              const SizedBox(width: 10),
              ChoiceChip(
                label: Text(
                  'non-Coffee',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                selected: true,
                selectedColor: secondaryColor,
                onSelected: (bool selected) {},
              ),
              const SizedBox(width: 10),
              ChoiceChip(
                label: Text(
                  'Food',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                selected: true,
                selectedColor: secondaryColor,
                onSelected: (bool selected) {},
              ),
              const SizedBox(width: 10),
              ChoiceChip(
                label: Text(
                  'Snack',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                    letterSpacing: 1.5,
                  ),
                ),
                selected: true,
                selectedColor: secondaryColor,
                onSelected: (bool selected) {},
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      );
    }

    Widget listItem() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'List Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/productList1'),
                  child: Row(
                    children: [
                      Text(
                        'See All',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const ProductTile(),
            const ProductTile(),
            const ProductTile(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor2,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  header(),
                  favoriteItem(),
                  filterChips(),
                ],
              ),
            ),
            listItem(),
          ],
        ),
      ),
    );
  }
}
