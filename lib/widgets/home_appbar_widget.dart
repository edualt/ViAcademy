import 'package:academy/screens/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final String? greetingText;
  final String welcomeText;

  const HomeAppBar({
    Key? key,
    this.greetingText,
    required this.welcomeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.grey,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
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
                    if (greetingText != null) // Verificar si greetingText no es nulo
                      Text(
                        greetingText!,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    Text(
                      welcomeText,
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
          onPressed: () {
            _navigateToPage(context, '/search');
          },
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {
            _navigateToPage(context, Cart.routeName);
          },
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

void _navigateToPage(BuildContext context, String routeName) {
  if (ModalRoute.of(context)!.settings.name != routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}