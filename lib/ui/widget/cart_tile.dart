// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class CartTile extends StatelessWidget {
  const CartTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 170,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/image4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coffee Latte Art',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Rp. 25,000',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.delete_outline_sharp,
                      color: redColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Remove',
                      style: redTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.minimize,
                        color: primaryColor,
                        size: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    ClipRRect(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.add,
                      color: primaryColor,
                      size: 28,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
