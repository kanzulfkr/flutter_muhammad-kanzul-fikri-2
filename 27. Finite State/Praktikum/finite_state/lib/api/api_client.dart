import 'package:dio/dio.dart';
import 'package:finite_state/models/models_food.dart';

class FoodAPI {
  static Future<List<Food>> getFoods() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Food> foods = (response.data as List)
        .map((e) => Food(id: e['id'], name: e['name']))
        .toList();

    return foods;
  }
}
