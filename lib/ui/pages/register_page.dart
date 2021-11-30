import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _gender = 0;
  void _handleRadioValueChange(int? value) {
    setState(() {
      _gender = value!;

      switch (_gender) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      // ignore: avoid_unnecessary_containers
      return Container(
        padding: const EdgeInsets.only(top: 20, right: 24, left: 24),
        child: Text(
          'Register Here!',
          style: primaryTextStyle.copyWith(
            fontSize: 30,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget formInput() {
      return Container(
        // ignore: prefer_const_constructors
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
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
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Repeat Password',
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone',
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Gender',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    Row(children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: _gender,
                            onChanged: _handleRadioValueChange,
                          ),
                          Text(
                            'Male',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _gender,
                            onChanged: _handleRadioValueChange,
                          ),
                          Text(
                            'Female',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
                const SizedBox(height: 60),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 60,
                  width: 330,
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                    style: TextButton.styleFrom(
                      backgroundColor: thirdColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                    child: Text(
                      'Registed',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return GestureDetector(
        onTap: () 
        => Navigator.pushNamed(context, '/signIn'),
        child: Container(
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 70,
          ),
          child: Text(
            'Have an Account?, Login Here!',
            style: thirdTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
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
