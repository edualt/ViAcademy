import 'package:academy/widgets/home_appbar.dart';
import 'package:academy/widgets/home_bottom_bar.dart';
import 'package:academy/widgets/items_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
            HomeAppBar(),
            ItemsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
