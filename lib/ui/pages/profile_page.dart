import 'package:flutter/material.dart';
import 'package:wadah_kopi/shared/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: transparentColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Edit Profile',
            style:
                primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 18.0),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.border_all_rounded,
                color: primaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    Widget contentPhoto() {
      return Container(
        // padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 240,
                height: 240,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // ignore: sized_box_for_whitespace
              Container(
                height: 60,
                width: 230,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  child: Text(
                    'Change Photo',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget formInput() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: duplicate_ignore
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // labelText: 'Name',
                      hintText: 'Irvan Muhammad Sindy',
                      hintStyle: primaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // labelText: 'Email',
                      hintText: 'irvansindy7@gmail.com',
                      hintStyle: primaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      // labelText: 'Phone',
                      hintText: '0895-3343-59983',
                      hintStyle: primaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                ],
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
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            contentPhoto(),
            formInput(),
          ],
        ),
      ),
    );
  }
}
