import 'package:flutter/material.dart';

class CustomSearchInput extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const CustomSearchInput({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          onChanged: onChanged,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Buscar',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
