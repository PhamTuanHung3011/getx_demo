import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../models/user_model/user_model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts';

class MyApiClient {
  final http.Client httpClient;

  MyApiClient({
    required this.httpClient,
  });

  Future<List<User>> getAll() async {
    print('=====> API provider');
      var response = await http.get(Uri.parse(baseUrl));
        print('=====> ${parseUser(response.body)}');
        return parseUser(response.body);
  }
  List<User> parseUser(String responseBody) {
    final parsed = convert.jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<User>( (json) => User.fromJson(json)).toList();
  }

}
