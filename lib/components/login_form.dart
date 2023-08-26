import 'package:admin_web/scaffolds/app_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formState,
    required this.textController,
    required this.onChange,
    required this.validator,
    required this.child,
  }) : _formState = formState;

  final GlobalKey<FormState> _formState;
  final TextEditingController textController;
  final onChange;
  final validator;
  final child;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formState,
      child: Column(
        children: [
          SizedBox(
            width: 400.0,
            child: TextFormField(
              onChanged: onChange,
              controller: textController,
              validator: validator,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'Masukkan Nomor Telepon',
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            onPressed: () {
              if (_formState.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppScreen(
                              nomor: textController.text,
                            )));
              }
            },
            child: child,
          ),
        ],
      ),
    );
  }
}
