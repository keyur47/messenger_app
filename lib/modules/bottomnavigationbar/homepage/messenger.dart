import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_controller.dart';
import 'package:messenger_app/utils/app_color.dart';

class Messenger extends StatelessWidget {
  final ApiResController _apiResController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Obx(
        () => _apiResController.isLoader.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
              child: ListView.builder(
                  itemCount: _apiResController.demoModel.value.result?.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                            child: Text(
                                _apiResController.demoModel.value.result?[index].message?.text??"Not available data", textAlign: TextAlign.center,),
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
