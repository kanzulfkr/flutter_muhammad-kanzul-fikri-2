import 'package:flutter/material.dart';

class ImageManager extends ChangeNotifier {
  final List<String> _imageItem = [];
  List<String> get imageItem => _imageItem;

  void addItem(String imageName) {
    _imageItem.add(imageName);
    notifyListeners();
  }

  void deleteItem(String imageName) {
    _imageItem.remove(imageName);
    notifyListeners();
  }
}
