import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/data/models/populars/result_model.dart';
import 'package:getx_demo/app/ui/android/popular_screen/popular_widget.dart';

import '../../../controller/popular_controller.dart';
import '../popular_screen/popular_screen.dart';

class PopularDetailScreen extends GetView<PopularController> {
static const routeName = '/popular_detail_movie';
  final int? id;
  PopularDetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    List<Result> resultData = controller.popular.results;
    int index = resultData.indexWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text('detail screen'),
      ),

      body
          : Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 500,
            child: Image.network(resultData[index].poster_path.toString().replaceAll(RegExp(r'/'), 'https://image.tmdb.org/t/p/w500/'),fit: BoxFit.cover,),
          ),
          Container(
            child: Text('${index != -1 ? resultData[index].title : 'No Data'} '),
          ),
          Container(
            child: Text(' Rateting: ${index != -1 ? resultData[index].vote_average : 'No Data'} '),
          ),
          Container(
            width: 342,
            height: 187,
            child: Stack(
              children:[Container(
                width: 342,
                height: 187,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0x00000000), Colors.black], ),
                ),
              ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 493.67,
                      height: 616.63,
                    ),
                  ),
                ),],
            ),
          ),
          TextButton(onPressed: () {
            // Get.toNamed(PopularScreen.routeName);
            Get.back();
          }, child: Text('Back!')),

        ],
      ),
    );
  }
}
