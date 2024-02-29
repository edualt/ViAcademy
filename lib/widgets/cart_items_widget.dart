import 'package:flutter/material.dart';

class CartItemsWidget extends StatelessWidget {
  final String subtitle;
  final String title;
  final int price;
  final String? imageUrl;
  // final VoidCallback onPressed;

  const CartItemsWidget({
    Key? key,
    required this.subtitle,
    required this.title,
    required this.price,
    this.imageUrl,
    // required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    // image: const DecorationImage(image: image),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: Colors.black),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Alinear elementos al final (derecha)
                  children: [
                    Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
