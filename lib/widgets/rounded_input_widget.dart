import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final String _label;
  final String _text;

  const RoundedInput({super.key, required String label, required String text}): _label = label, _text = text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _label,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: Colors.black),
        ),
        const SizedBox(height: 10),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
              border: Border.all(color: const Color(0xFFC3C7E5)),
            ),
            child: TextField(
              cursorColor: const Color(0xFFC3C7E5),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: _text,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                isDense: true,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: const Color(0xFFC3C7E5)),
              ),
            )),
      ],
    );
  }
}
