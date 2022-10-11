import 'package:get/get.dart';
import 'package:getx_demo/app/data/repository/upcoming_repository.dart';

import '../data/models/top_rates/root_upcoming_model.dart';

class UpComingController extends GetxController {
  final UpComingRepository upComingRepository;
  UpComingController({required this.upComingRepository});

  final _upcoming = RootUpComing().obs;
  get upcoming => _upcoming.value;
  set upcoming(value) {
    _upcoming.value = value;
  }

  getAllUpComing() {
    upComingRepository.getAllUpComing().then((data) {
      upcoming = data;
      print('@@@@ ${data.toString()}');
      update();
    });
  }


}