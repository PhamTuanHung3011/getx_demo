import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/controller/home_controller.dart';
import 'package:getx_demo/app/controller/popular_controller.dart';
import 'package:getx_demo/app/controller/up_coming_controller.dart';
import 'package:getx_demo/app/ui/android/up_coming_screen/up_coming_screen.dart';
import 'package:http/http.dart' as http;
import '../../../data/provider/popular_api.dart';
import '../../../data/provider/upcoming_api.dart';
import '../../../data/repository/popular_repository.dart';
import '../../../data/repository/upcoming_repository.dart';
import '../popular_screen/popular_screen.dart';
import '../widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  var popularController = Get.put(PopularController(
      popularRepository: PopularRepository(
          popularApi: PopularApi(httpClient: http.Client()))));
  UpComingController upComingController = Get.put(UpComingController(
      upComingRepository: UpComingRepository(
          upComingApi: UpComingApi(httpClient: http.Client()))));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Color(0xff242a32),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 24,
              top: 42,
              child: SizedBox(
                width: 317,
                child: Text(
                  'What do you want to watch',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 92,
              child: Container(
                width: 327,
                height: 42,
                padding: EdgeInsets.only(left: 16, top: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // border: Border.all(width: 1, color: Colors.amberAccent),
                  color: Color(0xff3a3f47),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color(0xff67686D), fontSize: 18),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Color(0xff67686D),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 154,
              child: Container(
                width: 340,
                height: 250,
                child: PopularScreen(),
              ),
            ),
            Positioned(
              left: 17,
              top: 410,
              child: GestureDetector(
                onTap: () {
                  //TODO goi now playing screen.
                },
                child: SizedBox(
                  width: 96.16,
                  height: 27.05,
                  child: Text(
                    "Now playing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 110,
              top: 410,
              child: GestureDetector(
                onTap: () {
                  //TODO goi upcoming screen.
                },
                child: SizedBox(
                  width: 96.16,
                  height: 27.05,
                  child: Text(
                    "Upcoming",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 410,
              child: GestureDetector(
                onTap: () {
                  //TODO goi top rated screen.
                },
                child: SizedBox(
                  width: 96.16,
                  height: 27.05,
                  child: Text(
                    "Top rated",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 285,
              top: 410,
              child: GestureDetector(
                onTap: () {
                  //TODO goi popular screen.
                },
                child: SizedBox(
                  width: 96.16,
                  height: 27.05,
                  child: Text(
                    "Popular",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 435,
              child: Container(
                width: 342,
                height: 318,
                child: UpComingScreen(),
              ),
            ),
          ],
        ),

        //   ,Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       Container(
        //
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         child: Row(
        //           children: [
        //             Text('Go to Popular screen'),
        //             IconButton(
        //                 onPressed: () {
        //                   Get.toNamed(PopularScreen.routeName);
        //                 },
        //                 icon: Icon(Icons.navigate_next_outlined)),
        //           ],
        //         ),
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           Get.toNamed(UpComingScreen.routeName);
        //         },
        //         child: Container(
        //           width: Get.width,
        //           height: 100,
        //           child: Row(
        //             children: [
        //               Text('Go to up coming screen'),
        //               IconButton(
        //                   onPressed: () {
        //                     Get.toNamed(UpComingScreen.routeName);
        //                   },
        //                   icon: Icon(Icons.navigate_next_outlined)),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    ));
  }
}
