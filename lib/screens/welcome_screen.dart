import 'package:academy/screens/login_screen.dart';
import 'package:academy/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
            Image.asset(
              "assets/images/png/welcome_illustration.png",
              height: 300,
            ),
            const SizedBox(height: 20),
            Text(
              "Aprende lo que necesitas",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: Colors.black),
            ),
            const SizedBox(height: 20),
            Text(
              "Empieza hoy a obtener el conocimiento que buscas, através de distintas opciones y métodos de aprendizaje",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            //   full width button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login())
                  );
                },
                style: ElevatedButton.styleFrom(
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
            const SizedBox(height: 10),
            // full width button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4554de),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "Registrarse",
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
