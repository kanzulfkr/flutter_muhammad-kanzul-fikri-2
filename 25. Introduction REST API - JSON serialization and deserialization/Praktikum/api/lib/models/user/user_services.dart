import 'package:dio/dio.dart';
import 'user.dart';

abstract class Services {
  static Future<User?> getAllUser() async {
    try {
      var response = await Dio().get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');

      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return User(
          id: response.data['id'],
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<User?> getById(int id) async {
    try {
      var response = await Dio().get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/$id');
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return User(
          id: response.data['id'],
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<User?> createUser(String name, String phone) async {
    try {
      var response = await Dio().post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {
          'name': name,
          'phone': phone,
        },
      );
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 201) {
        return User(
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          name: response.data['name'],
          phone: response.data['phone'],
        );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
