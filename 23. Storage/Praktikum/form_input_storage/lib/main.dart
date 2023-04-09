import 'package:flutter/material.dart';
import 'package:form_input_storage/models/db_manager.dart';
import 'package:form_input_storage/view/screens/create_screen.dart';
import 'package:form_input_storage/view/screens/home_screen.dart';
import 'package:form_input_storage/view/screens/login_screen.dart';
import 'package:form_input_storage/view/screens/profile_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Management',
        routes: {
          '/': (context) => const LoginScreen(),
          '/homeScreen': (context) => const HomeScreen(),
          '/profileScreen': (context) => const ProfileScreen(),
          '/createContactScreen': (context) => const CreateContactScreen(),
        },
      ),
    );
  }
}
