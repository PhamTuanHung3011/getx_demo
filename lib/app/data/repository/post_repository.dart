

import '../provider/MyApiClient.dart';

class PostRepo {
  final MyApiClient myApiClient;
  PostRepo({required this.myApiClient});

  getAll() {
    print('=====> REPO');
    myApiClient.getAll();
  }

}