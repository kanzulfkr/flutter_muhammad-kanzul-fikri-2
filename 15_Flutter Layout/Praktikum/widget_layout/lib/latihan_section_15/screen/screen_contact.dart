import 'package:flutter/material.dart';
import 'package:widget_layout/latihan_section_15/models/contact.dart';

class MyListContact extends StatelessWidget {
  const MyListContact({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: contact.length,
        itemBuilder: (BuildContext context, int index) {
          final listContact = Contact.fromJson(contact[index]);
          return ListTile(
            title: Text(listContact.username),
            subtitle: Text(listContact.phone),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                listContact.username[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
