// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:vehicules/views/favorite.dart';
import 'package:vehicules/views/home.dart';
import 'package:vehicules/views/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_selectedIndex),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Couleur de l'ombre
              spreadRadius: 1, // Rayon de dispersion de l'ombre
              blurRadius: 5, // Rayon de flou de l'ombre
              offset: const Offset(
                  0, 2), // Décalage de l'ombre par rapport au conteneur
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              icon: const Icon(Icons.home),
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              icon: const Icon(Icons.favorite),
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              icon: const Icon(Icons.person),
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const Favorite();
      case 2:
        return const Profile();
      default:
        return Container();
    }
  }
}
