import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.grey,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hola Jose",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                    Text(
                      "Bienvenido a ViAcademy",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
