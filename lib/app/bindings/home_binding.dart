import 'package:get/get.dart';
import 'package:getx_demo/app/controller/home_controller.dart';
import 'package:getx_demo/app/data/repository/post_repository.dart';
import 'package:http/http.dart' as http;

import '../data/provider/MyApiClient.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>( () {
      return HomeController(
        postRepo: PostRepo(
          myApiClient: MyApiClient(httpClient: http.Client()),
        ),
      );
    });
  }
}
