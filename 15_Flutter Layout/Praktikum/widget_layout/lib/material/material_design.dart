import 'package:flutter/material.dart';
import 'package:widget_layout/models/learn.dart';
import '../models/learn.dart';

class MyFLutterApp extends StatelessWidget {
  const MyFLutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My FLutter App',
      theme: ThemeData(
          primaryColor: const Color(0xFF6200EE),
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
            secondary: const Color(0xFF03DAC5),
          )),
      home: const HomePageDesign(),
    );
  }
}

class HomePageDesign extends StatelessWidget {
  const HomePageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('My Flutter App'),
          centerTitle: true,
          actions: [
            // Navigate to the Search Screen
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: ListView.builder(
          itemCount: Learn.listLearn.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                Learn.listLearn[index].toString(),
                style: const TextStyle(fontSize: 20),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), label: 'Information'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          focusColor: Colors.black,
        ));
  }
}
