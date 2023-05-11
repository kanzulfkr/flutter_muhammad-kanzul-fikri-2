import 'package:dio/dio.dart';

import '../models/models_food.dart';

abstract class FoodServices {
  var base_url =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods';
  Future<Food?> getAllFood() async {
    try {
      var response = await Dio().get(base_url);

      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return Food(
          id: response.data['id'],
          name: response.data['name'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Food?> getById(int id) async {
    try {
      var response = await Dio().get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/$id');
      print(response.statusCode);
      print(response.data);

      if (response.statusCode == 200) {
        return Food(
          id: response.data['id'],
          name: response.data['name'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
