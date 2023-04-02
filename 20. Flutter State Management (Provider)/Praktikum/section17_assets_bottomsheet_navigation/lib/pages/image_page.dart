import 'package:flutter/material.dart';

import '../widgets/image_list.dart';
import 'cart_page.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View with Provider'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
            icon: const Icon(Icons.favorite_sharp),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: ImageList(),
      ),
    );
  }
}
