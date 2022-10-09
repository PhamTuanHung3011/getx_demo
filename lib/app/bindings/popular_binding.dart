


import 'package:get/get.dart';
import 'package:getx_demo/app/controller/popular_controller.dart';
import 'package:getx_demo/app/data/provider/popular_api.dart';
import 'package:getx_demo/app/data/repository/popular_repository.dart';
import 'package:http/http.dart' as http;

class PopularBinding implements Bindings {

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PopularController>(() {
      return PopularController(popularRepository: PopularRepository(popularApi: PopularApi(httpClient: http.Client())));
    });
  }

}

