

import 'package:get/get.dart';

import '../data/models/user_model/user_model.dart';
import '../data/repository/post_repository.dart';

class HomeController extends GetxController {
  final PostRepo postRepo;
  HomeController({required this.postRepo});

  final RxList<User> _postList = <User>[].obs;

  List<User> get postList => _postList.value;
  set postList(List<User> value) {
    _postList.value = value;
  }

  getAll() async{
    print('=====> Home_Controller');
    postRepo.getAll().then((data) {
      postList = data;
      print('===>@@@@ $data');
      update();
    });


  }
}