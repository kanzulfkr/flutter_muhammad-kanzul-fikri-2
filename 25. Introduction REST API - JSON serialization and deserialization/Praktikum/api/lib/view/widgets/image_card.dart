import 'package:flutter/material.dart';

import '../../models/image/image_services.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: DiceBearService.getAvatarUrl(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Image.network(snapshot.data!);
        } else if (snapshot.hasError) {
          return const Text('Error loading avatar');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
