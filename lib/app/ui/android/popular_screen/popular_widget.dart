import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/ui/android/detail_screens/popular_detail_screen.dart';

import '../../../data/models/populars/result_model.dart';

class PopularWidget extends StatelessWidget {
  List<Result> results;

  PopularWidget(this.results);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  results.length,
                  (index) => Container(
                      width: 155,
                      height: 210,
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: GestureDetector(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            results[index].poster_path.toString().replaceAll(
                                RegExp(r'/'), 'https://image.tmdb.org/t/p/w500/'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () {
                          Get.to(
                              () => PopularDetailScreen(id: results[index].id));
                        },
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                results.length,
                (index) => Container(
                  width: 200,
                  height: 275,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Text(results[index].title.toString()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
