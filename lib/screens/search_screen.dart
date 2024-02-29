import 'package:academy/widgets/search_appbar_widget.dart';
import 'package:academy/widgets/search_input_widget.dart';
import 'package:academy/widgets/search_items_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchAppBar(),
            CustomSearchInput(controller: _searchController),
            for (var i = 1; i <= 4; i++)
              SearchItemsWidget(subtitle: "Lorem", title: "Asesoria"),
          ],
        ),
      ),
    );
  }
}
