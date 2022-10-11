import 'package:getx_demo/app/data/models/top_rates/root_upcoming_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UpComingApi {

  final http.Client httpClient;
  UpComingApi({required this.httpClient});


  RootUpComing parseTopRate(String responseBody) {
    return RootUpComing.fromJson(convert.jsonDecode(responseBody) as Map<String, dynamic>) ;
  }

  Future<RootUpComing> getAllUpComing() async{
    var url =
        'https://api.themoviedb.org/3/movie/upcoming?api_key=14dbedbaac4a6e340bed37178a051c56&language=en-US&page=1';
    var response = await http.get(Uri.parse(url));
    return parseTopRate(response.body);
  }
}