import 'package:flutter/material.dart';
import 'package:admin_web/components/login_form.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();

  bool? isChecked = false;
  String isLog = 'Silakan Masukkan Nomor';

  void validate(String text) {
    if (textController.text.length >= 11 && textController.text.length <= 13) {
      return setState(() {
        isChecked = true;
        isLog = 'L O G I N';
      });
    }
    if (textController.text.length >= 1 && textController.text.length < 11) {
      return setState(() {
        isChecked = false;
        isLog = '...';
      });
    }
    if (textController.text.length > 13) {
      return setState(() {
        isChecked = false;
        isLog = 'Masukkan Nomor Yang Valid';
      });
    }
    if (textController.text.isEmpty) {
      return setState(() {
        isLog = 'Silakan Masukkan Nomor';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              // depe icon
              Icons.lock,
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              // depe tulisan welcome
              'W E L C O M E',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            LoginForm(
              formState: _formState,
              textController: textController,
              validator: (value) {
                // if (value!.isEmpty) {
                //   return 'Masukkan nomor terlebih dahulu';
                // } else if (textController.text.length != 12 &&
                //     textController.text.length != 11) {
                //   return 'Masukkan nomor yang valid (11-12 angka)';
                // }
                // return null;
              },
              onChange: (value) {
                validate(value);
              },
              child: Text(isLog),
            ),
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
