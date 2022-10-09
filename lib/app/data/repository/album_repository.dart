import '../provider/albumApiClient.dart';
import 'package:http/http.dart' as http;

class AlbumRepository {
  final AlbumApiClient albumApiClient;
  AlbumRepository({required this.albumApiClient});


  getAll() {
   return albumApiClient.getAllAlbum();
  }
}