import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_controller.dart';
import 'package:messenger_app/helpr/loading_indicator.dart';
import 'package:messenger_app/utils/app_color.dart';

class People extends StatelessWidget {
   People({Key? key}) : super(key: key);
  final ApiResController _apiResController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Obx(
            () => _apiResController.isLoader.value
            ? const Center(child: Loading())
            : Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: ListView.builder(
            itemCount: _apiResController.demoApi.value.result?.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                      child: Text(
                        _apiResController.demoApi.value.result?[index].message?.text??"Not available data", textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
