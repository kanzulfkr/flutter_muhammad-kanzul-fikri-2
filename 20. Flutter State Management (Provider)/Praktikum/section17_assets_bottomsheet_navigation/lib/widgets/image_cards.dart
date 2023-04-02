import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section17_assets_bottomsheet_navigation/provider/image_manager.dart';

class ImageCards extends StatelessWidget {
  final Function() onTap;
  final String imageName;

  const ImageCards({
    super.key,
    required this.imageName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Consumer<ImageManager>(
        builder: (context, data, child) {
          bool isAdded = data.imageItem.contains(imageName);
          return Column(
            children: [
              SizedBox(
                width: 130,
                height: 137,
                // padding: const EdgeInsets.symmetric(verti: 5),
                child: Image.network(
                  imageName,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.favorite,
                  color: isAdded ? Colors.red : Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
