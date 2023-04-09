import 'package:flutter/material.dart';

class TextFormFieldPassword extends StatelessWidget {
  const TextFormFieldPassword({
    Key? key,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      keyboardType: TextInputType.name,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        labelText: 'Password',
        prefixIcon: Icon(Icons.password_sharp),
        prefixIconColor: Colors.black,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
      ),
      validator: (value) {
        if (value != null && value.length < 8) {
          return 'Enter min. 8 characters';
        } else {
          return null; //form is valid
        }
      },
    );
  }
}
