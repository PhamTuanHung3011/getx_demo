import 'package:getx_demo/app/data/provider/popular_api.dart';

class PopularRepository {
  final PopularApi popularApi;
  PopularRepository({required this.popularApi});

  getAllPopular() {
    return popularApi.getAllPopular();
  }
}