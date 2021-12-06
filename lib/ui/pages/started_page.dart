import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Wadah Kopi',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                  letterSpacing: 6,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                'Berawal dari kecangkir kopi,\nmenimbulkan rasa yang menenangkan hati.',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              // ignore: sized_box_for_whitespace
              Container(
                width: 220,
                height: 60,
                margin: const EdgeInsets.only(bottom: 60),
                child: TextButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/register', (route) => false),
                  style: TextButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  child: Text(
                    'Get Started',
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
      ]),
    );
  }
}
