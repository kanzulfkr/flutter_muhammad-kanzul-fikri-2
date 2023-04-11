class User {
  int id;
  String name, phone;

  User({
    required this.id,
    required this.name,
    required this.phone,
  });

  // factory User.fromJSON(Map<String, dynamic> parsedJson) {
  //   return User(
  //     id: parsedJson['id'],
  //     name: parsedJson['name'],
  //     email: parsedJson['email'],
  //     phone: parsedJson['phone'],
  //   );
  // }
}
