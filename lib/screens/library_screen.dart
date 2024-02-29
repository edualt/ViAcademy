import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:academy/widgets/library_items_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(
              welcomeText: "Asesorias compradas",
            ),
            for (var i = 1; i <= 10; i++)
              const LibraryItemsWidget(title: "Asesoria", subtitle: "Lorem")
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
