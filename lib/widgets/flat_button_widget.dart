import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  final String label;
  const FlatButtonWidget({
    super.key, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(color: Colors.black),
        ),
      ),
    );
  }
}