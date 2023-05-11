import 'package:flutter/material.dart';
import 'package:form_input_2/screens/flutter_advance_form.dart';
import 'package:form_input_2/screens/flutter_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const FlutterForm(),
      // home: const AdvanceForm(),
    );
  }
}
