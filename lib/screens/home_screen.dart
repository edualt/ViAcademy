import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:academy/widgets/items_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = '/home';
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(
              greetingText: 'Hola José',
              welcomeText: 'Bienvenido a ViAcademy',
            ),
            ItemsWidget(),
          ],
        ),
      ),
    );
  }
}

