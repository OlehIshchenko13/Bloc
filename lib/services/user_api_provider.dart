import 'package:flutter_bloc_3_les/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProvider {
  // http://jsonplaceholder.typicode.com/users

  Future<List<User>> getUser() async {
    final response = await http.get(Uri.parse('http://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching users');
    }
  }
}