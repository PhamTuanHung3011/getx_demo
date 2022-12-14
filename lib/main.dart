import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/routes/app_page.dart';
import 'package:getx_demo/app/ui/android/home/home_page.dart';

import 'app/routes/app_routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      getPages: AppPage.pages,
    );
  }
}
