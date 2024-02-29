import 'package:academy/screens/cart_screen.dart';
import 'package:academy/screens/home_screen.dart';
import 'package:academy/screens/library_screen.dart';
import 'package:academy/screens/search_screen.dart';
import 'package:academy/utils/theme/theme.dart';
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const Library(),
      // home: const Cart(),
      // home: const Search()
    );
  }
}



