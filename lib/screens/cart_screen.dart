import 'package:academy/widgets/cart_items_widget.dart';
import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  static const String routeName = '/cart';
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(
              welcomeText: "Carrito",
            ),
            for (var i = 1; i <= 4; i++)
              const CartItemsWidget(
                title: "Asesoria",
                subtitle: "Lorem",
                price: 100,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Total: \$400",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: Colors.black),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF181558),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                              ),
                              child: const Text('Pagar',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
