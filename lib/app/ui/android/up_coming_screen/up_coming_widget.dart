import 'package:flutter/material.dart';

import '../../../data/models/top_rates/top_upcoming_model.dart';
import '../detail_screens/grid_view_upcoming.dart';

class UpCoMingWidget extends StatelessWidget {
  List<TopUpcomingResult> results;
  UpCoMingWidget(this.results);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),

        child: GridView.builder(
            itemCount: results.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5 / 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15
            ),
            itemBuilder: (ctx, index) {
              return GridViewUpComing(results[index].title, results[index].poster_path);
            }),

    );
  }
}
