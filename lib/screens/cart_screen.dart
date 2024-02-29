import 'package:academy/widgets/cart_items_widget.dart';
import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
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
            const CartItemsWidget(title: "Asesoria", subtitle: "Lorem", price: 100,),
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
                        mainAxisAlignment: MainAxisAlignment
                            .end, // Alinear elementos al final (derecha)
                        children: [
                          Expanded(
                              child:
                              Container()), // Espacio flexible para empujar el botón hacia la derecha
                          ElevatedButton(
                            onPressed: () {
                              // Acción a realizar al presionar el botón
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color(0xFF181558), // Color de fondo
                              foregroundColor: Colors.white, // Color del texto
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    16), // Bordes redondeados
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12), // Padding interno
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
    bottomNavigationBar: HomeBottomBar(),
    );
  }
}
