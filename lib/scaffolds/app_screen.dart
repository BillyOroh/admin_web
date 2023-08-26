import 'package:flutter/material.dart';
import 'package:admin_web/on_main_body/dashboard_page.dart';
import 'package:admin_web/on_main_body/members_page.dart';
import 'package:admin_web/on_main_body/voters_page.dart';
import 'package:admin_web/on_main_body/mapping_page.dart';
import 'package:admin_web/on_side_body/navigation_panel.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    Key? key,
    required this.nomor,
  }) : super(key: key);

  final nomor;

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  var selectedIndex = 0;
  var nomor = '';
  // 4 page di main body
  final List pages = [
    DashPage(),
    MembersPage(),
    VotersPage(),
    MappingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // 2 row di app utama, kiri panel navigasi + profil, kanan main body
        children: [
          // Side body yang di kiri
          NavPanel(
            nomor: widget.nomor,
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),
          // Main body yang di kanan
          pages[selectedIndex]
        ],
      ),
    );
  }
}
