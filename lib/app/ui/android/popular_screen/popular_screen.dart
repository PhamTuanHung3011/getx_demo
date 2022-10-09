

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/controller/popular_controller.dart';
import 'package:getx_demo/app/ui/android/popular_screen/popular_widget.dart';

import '../widgets/loading_widget.dart';



class PopularScreen extends StatelessWidget {
  static const routeName = '/popular_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PopularController>(
          initState: (state) { Get.find<PopularController>().getAll() ;},
          builder: (_) {
            print('@@@ test ${_.popular.results.toString()}');

            return PopularWidget(_.popular.results ?? []);

          }),
    );
  }
}