import 'package:get/get.dart';
import 'package:getx_demo/app/data/models/albums/album_model.dart';
import 'package:getx_demo/app/data/repository/album_repository.dart';

class AlbumController extends GetxController{
  final AlbumRepository albumRepository;
  AlbumController({required this.albumRepository});

  final RxList<Album> _albums = <Album>[].obs;

  List<Album> get albumList => _albums.value;
  set albumList(List<Album> value) {
    _albums.value = value;
  }


  getAll() async{
    print('@@@ 1111');
    albumRepository.getAll().then((data) {
      print('@@@ 222 $data');
      albumList = data;
      update();
    });
  }


}