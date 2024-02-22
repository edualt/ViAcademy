import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
      ),

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Library"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
