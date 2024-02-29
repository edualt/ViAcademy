import 'package:academy/screens/home_screen.dart';
import 'package:academy/widgets/home_bottom_bar_widget.dart';
import 'package:academy/widgets/rounded_input_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ingresa tu usuario",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: Colors.black),
            ),
            Image.asset(
              "assets/images/png/login_illustration.png",
            ),
            const SizedBox(height: 20),
            const RoundedInput(label: "Correo", text: "Escribe tu correo"),
            const SizedBox(height: 16),
            const RoundedInput(label: "Contraseña", text: "Escribe tu contraseña"),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeBottomBar()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: const Color(0xFF181558),
                  foregroundColor: const Color(0xFF181558),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "Iniciar sesión",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
