// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

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
                  fillColor: Colors.white,
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
          child:
            Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                ]
              ),
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
        // width: double.infinity,
        // width: MediaQuery.of(context).size.width / 2,
        // height: MediaQuery.of(context).size.height / 2,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
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
                Row(
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
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 84,
                        height: 84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/image4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coffee Latte Art',
                            style: primaryTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'Rp. 25,000',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(height: 8),
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
                              const SizedBox(width: 5,),
                              Text(
                                '4.5',
                                style: goldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: Center(
                          
                          child: Icon(
                            Icons.shopping_basket,
                            color: primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 84,
                        height: 84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/image4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coffee Latte Art',
                            style: primaryTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'Rp. 25,000',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(height: 8),
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
                              const SizedBox(width: 5,),
                              Text(
                                '4.5',
                                style: goldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: Center(
                          
                          child: Icon(
                            Icons.shopping_basket,
                            color: primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 84,
                        height: 84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/image4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Coffee Latte Art',
                            style: primaryTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'Rp. 25,000',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(height: 8),
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
                              const SizedBox(width: 5,),
                              Text(
                                '4.5',
                                style: goldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: Center(
                          
                          child: Icon(
                            Icons.shopping_basket,
                            color: primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            favoriteItem(),
            filterChips(),
            listItem(),
          ],
        ),
      ),
    );
  }
}
