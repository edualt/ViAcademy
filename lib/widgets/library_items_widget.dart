import 'package:flutter/material.dart';

class LibraryItemsWidget extends StatelessWidget {
  final String subtitle;
  final String title;
  final String? imageUrl;
  // final VoidCallback onPressed;

  const LibraryItemsWidget({
    Key? key,
    required this.subtitle,
    required this.title,
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
                    Expanded(child: Container()), // Espacio flexible para empujar el botón hacia la derecha
                    ElevatedButton(
                      onPressed: () {
                        // Acción a realizar al presionar el botón
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF181558), // Color de fondo
                        foregroundColor: Colors.white, // Color del texto
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // Bordes redondeados
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding interno
                      ),
                      child: const Text('Agendar', style: TextStyle(fontSize: 16)),
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
