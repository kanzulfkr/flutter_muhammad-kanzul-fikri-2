import 'package:contact/screens/contact_create.dart';
import 'package:contact/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/contact_bloc.dart';

void main() {
  runApp(const MyContact());
}

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContactBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter State Management BLoC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => HomeScreen(),
          '/createContact': (context) => ContactCreate(),
        },
      ),
    );
  }
}
