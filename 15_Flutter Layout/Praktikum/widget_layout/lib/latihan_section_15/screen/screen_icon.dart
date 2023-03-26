import 'package:flutter/material.dart';
import 'package:widget_layout/latihan_section_15/models/list_icons.dart';

class MyIconApps extends StatelessWidget {
  const MyIconApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
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
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        itemCount: ListIcons.icons.length,
        padding: EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 50,
            childAspectRatio: 1,
            crossAxisSpacing: 50),
        itemBuilder: (BuildContext context, int index) {
          return CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 20,
            child: Icon(
                color: Colors.white,
                ListIcons.icons[index],
                // icons[ListIcons.listIcons],
                size: 30),
          );
        },
      ),
    );
  }
}
