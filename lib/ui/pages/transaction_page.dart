// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wadah_kopi/shared/theme.dart';
import 'package:wadah_kopi/ui/widget/transaction_tile.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

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
            'Your Transaction',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18.0,
            ),
          ),
        ),
      );
    }

    Widget emptyCart() {
      return Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.moneyCheckAlt,
                color: secondaryColor,
                size: 150,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Masih kosong nih',
                style: secondaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                'Jajan yuk biar terisi.',
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                  width: 220,
                  height: 60,
                  margin: const EdgeInsets.only(bottom: 60),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                    child: Text(
                      'Explore Menu',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
          children: const [
            TransactionTile(),
            TransactionTile(),
            TransactionTile(),
            TransactionTile(),
          ],
        );
    }

    return Scaffold(
      backgroundColor: whiteColor2,
      appBar: appBar(),
      body: SafeArea(
        child: content(),
      ),
    );
  }
}
