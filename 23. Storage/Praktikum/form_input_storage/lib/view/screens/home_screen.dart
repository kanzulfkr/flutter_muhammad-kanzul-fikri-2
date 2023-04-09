import 'package:flutter/material.dart';
import 'package:form_input_storage/view/screens/create_screen.dart';
import 'package:form_input_storage/view/screens/empty_screen.dart';
import 'package:form_input_storage/view/screens/profile_screen.dart';
import 'package:provider/provider.dart';

import '../../models/db_manager.dart';
import '../widgets/contact_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String route = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, ProfileScreen.route);
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, CreateContactScreen.route);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: buildContactList(),
    );
  }

  Widget buildContactList() {
    return Consumer<DbManager>(
      builder: (context, manager, child) {
        if (manager.contacts.isNotEmpty) {
          return ContactList(
            manager: manager,
          );
        } else {
          return const EmptyContactScreen();
        }
      },
    );
  }
}
