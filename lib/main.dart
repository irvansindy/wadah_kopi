import 'package:flutter/material.dart';
import 'package:wadah_kopi/ui/pages/change_password_page.dart';
import 'package:wadah_kopi/ui/pages/home_page.dart';
import 'package:wadah_kopi/ui/pages/main_page.dart';
import 'package:wadah_kopi/ui/pages/product_detail_page.dart';
import 'package:wadah_kopi/ui/pages/product_grid_page.dart';
import 'package:wadah_kopi/ui/pages/product_list_page.dart';
import 'package:wadah_kopi/ui/pages/profile_page.dart';
import 'package:wadah_kopi/ui/pages/register_page.dart';
import 'package:wadah_kopi/ui/pages/sign_in_page.dart';
import 'package:wadah_kopi/ui/pages/splash_page.dart';
import 'package:wadah_kopi/ui/pages/started_page.dart';

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/started': (context) => const StartedPage(),
      '/register': (context) => const RegisterPage(),
      '/signIn': (context) => const SignInPage(),
      '/main': (context) => const MainPage(),
      '/changePassword': (context) => const ChangePasswordPage(),
      '/editProfile': (context) => const ProfilePage(),
      '/home': (context) => const HomePage(),
      '/productList': (context) => const ProductListPage(),
      '/productGrid': (context) => const ProductGridPage(),
      '/productDetail': (context) => const ProductDetailPage(),
    });
  }
}
