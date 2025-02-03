import 'package:dantapps/widgets/card_skus.dart';
import 'package:dantapps/widgets/cart_page.dart';
import 'package:dantapps/widgets/profile_page.dart';
import 'package:dantapps/widgets/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final screens = [
    const TesteSku(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dantas"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.black,
        child: GNav(
          selectedIndex: _currentIndex,
          onTabChange: (index) => setState(() => _currentIndex = index),
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          gap: 8,
          padding: const EdgeInsets.all(16),
          tabBorderRadius: 40,
          tabBorder: Border.all(color: Colors.grey, width: 1),
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: ' Inicio',
            ),
            GButton(
              icon: Icons.search_rounded,
              text: ' Buscar',
            ),
            GButton(
              icon: Icons.shopping_cart_rounded,
              text: ' Carrinho',
            ),
            GButton(
              icon: Icons.person_rounded,
              text: ' Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
