


import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:getx_demo/app/controller/up_coming_controller.dart';
import 'package:getx_demo/app/data/provider/upcoming_api.dart';
import 'package:getx_demo/app/data/repository/upcoming_repository.dart';

class UpComingBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<UpComingController>(() {
     return UpComingController(upComingRepository: UpComingRepository(upComingApi: UpComingApi(httpClient: http.Client())));
   });
  }

}