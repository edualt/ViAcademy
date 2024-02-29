import 'package:academy/screens/cart_screen.dart';
import 'package:academy/screens/home_screen.dart';
import 'package:academy/screens/consultancies_screen.dart';
import 'package:academy/screens/login_screen.dart';
import 'package:academy/screens/register_screen.dart';
import 'package:academy/screens/search_screen.dart';
import 'package:academy/screens/welcome_screen.dart';
import 'package:academy/utils/theme/theme.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const MyHomePage(),
        '/search': (context) => const Search(),
        '/library': (context) => const Consultancies(),
        '/cart': (context) => const Cart(),
      },
      home: const HomeBottomBar(),
    );
  }
}



