import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../models/albums/album_model.dart';

class AlbumApiClient {
  final http.Client httpClient;
  AlbumApiClient({required this.httpClient});

  Future<List<Album>> getAllAlbum() async {
    var url =  'https://jsonplaceholder.typicode.com/albums';
    var responseBody = await http.get(Uri.parse(url));
    print('=====> ${responseBody.body}');
    return parseAlbum(responseBody.body);
  }

  List<Album> parseAlbum(String responseBody) {
    final parsed = convert.jsonDecode(responseBody);
    return parsed.map<Album>((album) => Album.fromJson(album)).toList();
  }

}