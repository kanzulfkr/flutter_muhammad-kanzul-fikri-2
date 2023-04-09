import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldEmail extends StatelessWidget {
  const TextFormFieldEmail({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        labelText: 'Email',
        prefixIcon: Icon(Icons.email),
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
      validator: (email) {
        // 5 install package email_validator
        if (email != null && !EmailValidator.validate(email)) {
          return 'Enter a valid email';
        } else {
          return null; //form is valid
        }
      },
    );
  }
}
