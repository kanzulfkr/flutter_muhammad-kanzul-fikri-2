import 'dart:convert';

import 'package:flutter/foundation.dart';

const contact = [
  {"username": "PurplePenguin22", "phone": "(555) 123-4567"},
  {"username": "GreenGiraffe99", "phone": "(555) 234-5678"},
  {"username": "SilverSunshine11", "phone": "(555) 345-6789"},
  {"username": "BlueButterfly44", "phone": "(555) 456-7890"},
  {"username": "GoldenDragonfly77", "phone": "(555) 567-8901"},
  {"username": "RedRainbow66", "phone": "(555) 678-9012"},
  {"username": "OrangeMeadow55", "phone": "(555) 789-0123"},
  {"username": "YellowNightfall33", "phone": "(555) 890-1234"},
  {"username": "BlackStarlight88", "phone": "(555) 901-2345"},
  {"username": "PinkMoonstone77", "phone": "(555) 012-3456"}
];

Contact dataFromJson(String str) => Contact.fromJson(json.decode(str));
String dataToJson(Contact contact) => json.encode(contact.toJson);

class Contact {
  String username;
  String phone;

  Contact({required this.username, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        username: json["username"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "phone": phone,
      };
}
