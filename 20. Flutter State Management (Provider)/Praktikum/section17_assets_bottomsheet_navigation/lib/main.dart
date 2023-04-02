import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section17_assets_bottomsheet_navigation/provider/image_manager.dart';

import 'pages/image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ImageManager(),
      child: MaterialApp(
        title: 'Shop Cart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ImagePage(),
      ),
    );
  }
}
