import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String imageUrl;

  const NewPage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Page with Image',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(imageUrl),
        // child: const Text(
        //   'This is new Page',
        // ),
      ),
    );
  }
}
