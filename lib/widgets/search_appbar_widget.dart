import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.grey,
      backgroundColor: Colors.white,
      title: Text(
        "Busqueda",
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .apply(color: Colors.black),
      ),
    );
  }
}
