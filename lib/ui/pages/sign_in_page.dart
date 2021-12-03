import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      // ignore: avoid_unnecessary_containers
      return Container(
        padding: const EdgeInsets.only(top: 20, right: 24, left: 24),
        child: Text(
          'Sign In Here!',
          style: primaryTextStyle.copyWith(
            fontSize: 30,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget formInput() {
      return Container(
        margin: const EdgeInsets.only(top: 40, right: 24, left: 24),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 40,
        ),
        decoration: BoxDecoration(
          color: whiteColor2,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(height: 60),
            // ignore: sized_box_for_whitespace
            Container(
              height: 60,
              width: 330,
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/main'),
                style: TextButton.styleFrom(
                  backgroundColor: thirdColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/editProfile'),
        // => Navigator.pushNamed(context, '/register'),
        child: Container(
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Not Have an Account?, Register Here!',
                style: thirdTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            formInput(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
