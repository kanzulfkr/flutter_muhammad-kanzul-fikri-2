import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section17_assets_bottomsheet_navigation/provider/image_manager.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ImageManager>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Favourite'),
        centerTitle: true,
      ),
      body: Consumer<ImageManager>(
        builder: (context, data, child) {
          return GridView.builder(
            itemCount: data.imageItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 130,
                    height: 157,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Image.network(
                      data.imageItem[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      manager.deleteItem(data.imageItem[index]);
                    },
                    icon: const Icon(
                      Icons.delete,
                      // color: isAdded ? Colors.red : Colors.black,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
