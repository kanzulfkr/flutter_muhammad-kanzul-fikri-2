import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:form_input_storage/view/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/text_form_email.dart';
import '../widgets/text_form_password.dart';
import '../widgets/text_form_username.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  Material(
                    shadowColor: Colors.black54,
                    elevation: 5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: TextFormFieldUsername(
                        usernameController: _usernameController),
                  ),
                  const SizedBox(height: 15),
                  Material(
                    shadowColor: Colors.black54,
                    elevation: 5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child:
                        TextFormFieldEmail(emailController: _emailController),
                  ),
                  const SizedBox(height: 15),
                  Material(
                    shadowColor: Colors.black54,
                    elevation: 5,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: TextFormFieldPassword(
                        passwordController: _passwordController),
                  ),
                  const SizedBox(height: 45),
                  Container(
                    height: 50,
                    width: 250,
                    margin: const EdgeInsets.all(5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Update',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      onPressed: () {
                        final isValidForm = formKey.currentState!.validate();

                        String username = _usernameController.text;
                        String email = _emailController.text;
                        if (isValidForm) {
                          logindata.setBool('login', false);
                          logindata.setString('username', username);
                          logindata.setString('email', email);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (route) => false);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
