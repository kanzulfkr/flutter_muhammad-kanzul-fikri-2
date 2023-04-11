import 'dart:convert';
import 'package:http/http.dart' as http;

class DiceBearService {
  static const baseUrl = 'https://avatars.dicebear.com/api';
  static const endpoint = '/male';

  static Future<String> getAvatarUrl() async {
    final response = await http
        .get(Uri.parse('$baseUrl$endpoint${_generateRandomSeed()}.png'));
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body['avatar_url'];
    } else {
      throw Exception('Failed to load avatar');
    }
  }

  static String _generateRandomSeed() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
