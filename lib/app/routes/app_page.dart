import 'package:get/get.dart';
import 'package:getx_demo/app/bindings/album_binding.dart';
import 'package:getx_demo/app/bindings/home_binding.dart';
import 'package:getx_demo/app/bindings/popular_binding.dart';
import 'package:getx_demo/app/ui/android/popular_screen/popular_screen.dart';

import '../ui/android/Albums/album_page.dart';
import '../ui/android/home/home_page.dart';
import 'app_routes.dart';

class AppPage {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.ALBUMS, page: () => AlbumPage(), binding: AlbumBinding()),
    GetPage(name: Routes.POPULAR, page: () => PopularScreen(), binding: PopularBinding()),
  ];
}
