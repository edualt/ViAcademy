import 'package:academy/widgets/flat_button_widget.dart';
import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(
              welcomeText: "Cuenta",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Icon(Icons.account_circle, size: 300),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.edit, size: 14,),
                      Text(
                        "Editar imagen",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const FlatButtonWidget(label: "Informacion de cuenta"),
                  const SizedBox(height: 20),
                  const FlatButtonWidget(label: "Mis pagos"),
                  const SizedBox(height: 20),
                  const FlatButtonWidget(label: "Nosotros"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
