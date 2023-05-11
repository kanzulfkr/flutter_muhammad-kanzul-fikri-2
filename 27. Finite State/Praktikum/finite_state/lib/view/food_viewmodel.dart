import 'package:finite_state/api/api_client.dart';
import 'package:flutter/material.dart';

import '../models/models_food.dart';

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.loading;
  FoodViewState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  _changeState(FoodViewState state) {
    _state = state;
    notifyListeners();
  }

  getAllFoods() async {
    try {
      final results = await FoodAPI.getFoods();
      _foods = results;
      notifyListeners();
      _changeState(FoodViewState.none);
    } catch (e) {
      _changeState(FoodViewState.error);
    }
  }
}

enum FoodViewState { none, loading, error }
