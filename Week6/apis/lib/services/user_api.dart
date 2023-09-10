import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:apis/model/user_name.dart';
import 'package:apis/model/user.dart';
class UserApi{
  static Future<List<User>> fetchUsers() async {
    const String url='https://randomuser.me/api/?results=10';
    final response=await http.get(Uri.parse(url));
    final body=response.body;
    final json=jsonDecode(body);
    final results=json['results'] as List<dynamic>;
    final users=results.map((e) {
      final name=UserName(title: e['name']['title'], first: e['name']['first'], last: e['name']['last']);
      return User(gender:e['gender'], email:e['email'], cell:e['cell'], phone:e['phone'], nat:e['nat'], name:name);
    }).toList();
    return users;
  }
}