import 'package:dio/dio.dart';
import 'posts.dart';

abstract class PostsServices {
  static Future<Posts?> getById(int id) async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts/$id');
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return Posts(
          id: response.data['id'],
          title: response.data['title'],
          body: response.data['body'],
          userId: response.data['userId'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<Posts?> updatePosts(
    int id,
    int userId,
    String title,
    String body,
  ) async {
    try {
      var response = await Dio().put(
        'https://jsonplaceholder.typicode.com/posts/1',
        data: {
          'id': id,
          'userId': userId,
          'title': title,
          'body': body,
        },
      );
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return Posts(
          id: response.data['id'],
          title: response.data['title'],
          body: response.data['body'],
          userId: response.data['userId'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
