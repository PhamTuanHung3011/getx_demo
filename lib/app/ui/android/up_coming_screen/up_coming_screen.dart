


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/controller/up_coming_controller.dart';
import 'package:getx_demo/app/ui/android/up_coming_screen/up_coming_widget.dart';

import '../../../data/models/top_rates/root_upcoming_model.dart';
import '../../../data/models/top_rates/top_upcoming_model.dart';

class UpComingScreen extends GetView<UpComingController> {
static const routeName = '/up_coming_screen';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpComingController>(
        initState: (state) { Get.find<UpComingController>().getAllUpComing() ;},
        builder: (_) {
          print('@@@ test ${_.upcoming.results.toString()}');

          return UpCoMingWidget(_.upcoming.results ?? []);

        });
  }
}
