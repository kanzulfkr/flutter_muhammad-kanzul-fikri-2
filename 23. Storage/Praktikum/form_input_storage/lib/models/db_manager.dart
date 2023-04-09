import 'package:flutter/material.dart';
import 'package:form_input_storage/helper/database_helper.dart';
import 'package:form_input_storage/models/contact.dart';

class DbManager extends ChangeNotifier {
  List<Contact> _contacts = [];
  late DatabaseHelper _dbHelper;

  List<Contact> get contacts => _contacts;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllContacts();
  }

  void _getAllContacts() async {
    _contacts = await _dbHelper.getContacts();
    notifyListeners();
  }

  Future<void> addContact(Contact contact) async {
    await _dbHelper.insertContact(contact);
    _getAllContacts();
  }

  Future<Contact> getContactById(int id) async {
    return await _dbHelper.getContactById(id);
  }

  void updateContact(Contact contact) async {
    await _dbHelper.updateContact(contact);
    _getAllContacts();
  }

  void deleteContact(int id) async {
    await _dbHelper.deleteContact(id);
    _getAllContacts();
  }
}
