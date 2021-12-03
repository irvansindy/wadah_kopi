import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              const SizedBox(
                width: 14,
              ),
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
    );
  }
}
