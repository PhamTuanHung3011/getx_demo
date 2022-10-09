import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../models/populars/popular_model.dart';


class PopularApi {
  final http.Client httpClient;

  PopularApi({required this.httpClient});

  Future<Popular> getAllPopular() async {
    var url =
        'https://api.themoviedb.org/3/movie/popular?api_key=14dbedbaac4a6e340bed37178a051c56&language=en-US&page=1';
    var response = await http.get(Uri.parse(url));
    return parsePopular(response.body);
  }

  Popular parsePopular(String stringJson) {
    return Popular.fromJson(
        convert.jsonDecode(stringJson) as Map<String, dynamic>);
  }
}