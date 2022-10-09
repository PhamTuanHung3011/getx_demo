import 'package:get/get.dart';
import 'package:getx_demo/app/controller/album_controller.dart';
import 'package:getx_demo/app/controller/home_controller.dart';
import 'package:getx_demo/app/data/provider/albumApiClient.dart';
import 'package:getx_demo/app/data/repository/album_repository.dart';
import 'package:http/http.dart' as http;

class AlbumBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlbumController>(() {
      return AlbumController(
          albumRepository: AlbumRepository(
              albumApiClient: AlbumApiClient(httpClient: http.Client())));
    });
  }
}
