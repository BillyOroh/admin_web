import 'package:flutter/material.dart';
import 'package:admin_web/components/profile.dart';

class NavPanel extends StatelessWidget {
  final selectedIndex;
  final onDestinationSelected;
  final nomor;

  NavPanel({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.nomor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // navigasi yang di atas
        NavigationRail(
          selectedIndex: selectedIndex,
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelTextStyle: TextStyle(color: Colors.black),
          elevation: 2,
          extended: true,
          onDestinationSelected: onDestinationSelected,
          destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.dashboard),
              label: Text('D A S H B O A R D'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.person),
              label: Text('M E M B E R S'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star),
              label: Text('V O T E R S'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.map),
              label: Text('M A P P I N G'),
            ),
          ],
        ),
        // widget profil yang di bawah
        ProfileField(nomor: nomor),
      ],
    );
  }
}
