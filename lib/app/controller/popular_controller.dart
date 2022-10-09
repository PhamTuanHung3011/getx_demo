import 'package:get/get.dart';
import 'package:getx_demo/app/data/models/populars/popular_model.dart';
import 'package:getx_demo/app/data/repository/popular_repository.dart';

class PopularController extends GetxController {
  final PopularRepository popularRepository;
  PopularController({required this.popularRepository});

final _popular = Popular().obs;
get popular => this._popular.value;
set popular(value) {
  this._popular.value = value;
}

  getAll() async{
    popularRepository.getAllPopular().then((data) {
      popular = data;
      print('====>data ${data.toString()}');
      update();
    });
  }
}