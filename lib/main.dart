import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:messenger_app/utils/my_behavior.dart';
import 'package:sizer/sizer.dart';

import 'helpr/api_res_controller.dart';
import 'modules/bottomnavigationbar/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        initialBinding: AppBidding(),
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          );
        },
        home: const MyHomePage(),
      );
    });
  }
}


class AppBidding implements Bindings {
  @override
  void dependencies() {
    Get.put(ApiResController());
  }
}
