import 'package:flutter/material.dart';

class TextFormFieldUsername extends StatelessWidget {
  const TextFormFieldUsername({
    Key? key,
    required TextEditingController usernameController,
  })  : _usernameController = usernameController,
        super(key: key);

  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _usernameController,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        labelText: 'Username',
        prefixIcon: Icon(Icons.person),
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
        if (value != null && value.length < 4) {
          return 'Enter at least 4 characters';
        } else {
          return null; //form is valid
        }
      },
    );
  }
}
