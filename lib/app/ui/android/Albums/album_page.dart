import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/controller/album_controller.dart';

import '../widgets/loading_widget.dart';

class AlbumPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AlbumController>(
          initState: (state) { Get.find<AlbumController>().getAll() ;},
          builder: (_) {
            print('@@@ test ${_.albumList.length.toString()}');
            return _.albumList.isEmpty ? LoadingWidget() :
            ListView.builder(
                itemCount: _.albumList.length,
                itemBuilder: (ctx, i) {
                  return ListTile(
                    title: Text(_.albumList[i].title ?? 'a'),
                  );
                })
            ;
          }),
    );
  }
}
