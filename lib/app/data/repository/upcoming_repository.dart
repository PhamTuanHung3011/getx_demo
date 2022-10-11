

import 'package:getx_demo/app/data/provider/upcoming_api.dart';

class UpComingRepository {
  final UpComingApi upComingApi;
  UpComingRepository({required this.upComingApi});

  getAllUpComing() {
    return upComingApi.getAllUpComing();
  }
}