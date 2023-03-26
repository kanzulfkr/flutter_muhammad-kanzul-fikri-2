import 'package:flutter/material.dart';

import '../models/contact.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 114, 113, 113),
        primarySwatch: Colors.grey,
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
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 77, 75, 75),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 77, 75, 75),
                ),
                child: Text('Home',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                title: const Text('Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                contentPadding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),

      body: ListView.builder(
          itemCount: Contact.contact.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  Contact.contact[index].name[0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(Contact.contact[index].name,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              subtitle: Text(Contact.contact[index].number.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            );
          }),

      //Body buat row column kontak
      // body: Container(
      //   padding: const EdgeInsets.all(8.0),
      //   decoration: BoxDecoration(
      //       border: Border.all(color: Colors.grey),
      //       borderRadius: const BorderRadius.all(Radius.circular(10))),
      //   child: Row(children: [
      //     const CircleAvatar(
      //       backgroundColor: Colors.blue,
      //       radius: 30,
      //       child: FlutterLogo(),
      //     ),
      //     const SizedBox(
      //       width: 20,
      //     ),
      //     Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: const [
      //             Text(
      //               'Name',
      //               style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      //             ),
      //             Text('No')
      //           ],
      //         ))
      //   ]),
      // ),

      // Prioritas 1
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: const <Widget>[
      //       Text('this is Material App',
      //           style: TextStyle(color: Colors.white, fontSize: 20)),
      //     ],
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 77, 75, 75),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
