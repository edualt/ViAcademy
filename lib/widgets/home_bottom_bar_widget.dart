import 'package:academy/screens/home_screen.dart';
import 'package:academy/screens/consultancies_screen.dart';
import 'package:academy/screens/profile_screen.dart';
import 'package:academy/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _currentTabIndex = 0;

  late List<Widget> screens;
  late MyHomePage homeScreen;
  late Consultancies consultanciesScreen;
  late ProfileScreen profileScreen;
  late Register registerScreen;

  @override
  void initState() {
    homeScreen = const MyHomePage();
    consultanciesScreen = const Consultancies();
    profileScreen = const ProfileScreen();
    registerScreen = const Register();
    screens = [homeScreen, registerScreen, consultanciesScreen, profileScreen];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        currentIndex: _currentTabIndex,
        selectedItemColor: const Color(0xFF4554DE),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Poppins',
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Biblioteca"),
          BottomNavigationBarItem(icon: Icon(Icons.library_books_rounded), label: "Asesorias"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
      body: screens[_currentTabIndex],
    );
  }
}
