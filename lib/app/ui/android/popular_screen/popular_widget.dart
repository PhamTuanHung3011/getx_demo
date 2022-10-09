import 'package:flutter/material.dart';

import '../../../data/models/populars/result_model.dart';

class PopularWidget extends StatelessWidget {
  List<Result> results;
  PopularWidget(this.results);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(results[index].posterPath.toString(),fit: BoxFit.cover,)),
                    )),
              ),
            ),
          ],
        ));
  }
}