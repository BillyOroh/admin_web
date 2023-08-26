import 'package:flutter/material.dart';
import 'package:admin_web/scaffolds/login_screen.dart';

class ProfileField extends StatelessWidget {
  final nomor;

  const ProfileField({
    super.key,
    required this.nomor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // Profil akun yang paling bawah
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avatar_logo.png'),
              maxRadius: 40,
            ),
            //color: Colors.red,
            height: 100,
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text('WELCOME'),
                Text(
                  nomor,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            //color: Colors.green,
            height: 50,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }),
              ],
            ),
            //color: Colors.blue,
            height: 50,
          ),
        ],
      ),
    );
  }
}
