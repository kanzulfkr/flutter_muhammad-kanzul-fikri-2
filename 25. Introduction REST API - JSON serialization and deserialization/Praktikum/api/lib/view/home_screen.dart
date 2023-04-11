import 'package:api/view/widgets/image_card.dart';

import 'package:flutter/material.dart';
import '../models/posts/posts.dart';
import '../models/posts/posts_services.dart';

import '../models/user/user.dart';
import '../models/user/user_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user;
  Posts? posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),

            // user != null
            //     ? UserCard(user: user!)
            //     : const Text(
            //         'No data, plis press the Get or Post button !',
            //         style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            //       ),
            // posts != null
            //     ? PostsCard(posts: posts!)
            //     : const Text(
            //         'No data, plis press the GetPosts or PutPosts button !',
            //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            //       ),
            AvatarImage(),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    User? result = await Services.getById(1);

                    if (result != null) {
                      setState(
                        () {
                          user = result;
                        },
                      );
                    }
                  },
                  child: const Text('GET USER BY ID')),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    User? result =
                        await Services.createUser('kanzul', '089783264242');
                    if (result != null) {
                      setState(() {
                        user = result;
                      });
                    }
                  },
                  child: const Text('POST USER')),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    Posts? result = await PostsServices.getById(1);

                    if (result != null) {
                      setState(
                        () {
                          posts = result;
                        },
                      );
                    }
                  },
                  child: const Text('GET POSTS')),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    Posts? result =
                        await PostsServices.updatePosts(1, 1, 'foo', 'bar');
                    if (result != null) {
                      setState(() {
                        posts = result;
                      });
                    }
                  },
                  child: const Text('PUT POSTS')),
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {}, child: const Text('GET IMAGES')),
            ),
          ],
        ),
      ),
    );
  }
}
