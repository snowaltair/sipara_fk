import 'package:flutter/material.dart';
import 'package:sipara/constant.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Mahasiswa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Akun',
        ),
      ],
      selectedItemColor: primaryColor,
      unselectedItemColor: blackColor,
    );
  }
}
