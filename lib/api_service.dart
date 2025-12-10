import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<dynamic> post(String url, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: {"Content-Type": "application/json"},
    );
    return jsonDecode(response.body);
  }

  static Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}