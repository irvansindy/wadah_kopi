import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class DetailTransaction extends StatelessWidget {
  const DetailTransaction({Key? key}) : super(key: key);

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
            'Detail Transactions',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 18.0,
            ),
          ),
        ),
      );
    }

    Widget headerTransaction() {
      return Container(
        margin: const EdgeInsets.only(
          right: 15,
          left: 15,
          top: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 26,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: thirdColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'On Proccess',
                style: secondaryTextStyle.copyWith(
                  fontSize: 9,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No Transaction',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TRXxxxxxxxxxx1',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Date',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '20 Nov 2021',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget detailTransaction() {
      return Container(
        margin: const EdgeInsets.only(
          right: 15,
          left: 15,
          top: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
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
                  const SizedBox(
                    width: 10,
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
                      Row(
                        children: [
                          Text(
                            'Rp. 100,000',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'X 1 Pcs',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
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
                  const SizedBox(
                    width: 10,
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
                      Row(
                        children: [
                          Text(
                            'Rp. 100,000',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'X 1 Pcs',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget detailPrice() {
      return Container(
        height: 260,
        padding: const EdgeInsets.all(15.0),
        color: whiteColor2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Details',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Divider(
              thickness: 1,
              color: secondaryColor,
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Rp. 100,000',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  '5%',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Fee',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  '2%',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: secondaryColor,
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Rp. 107,000',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          headerTransaction(),
          detailTransaction(),
          detailPrice(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor2,
      appBar: appBar(),
      body: content(),
    );
  }
}
