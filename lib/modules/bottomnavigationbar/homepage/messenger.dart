import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_controller.dart';
import 'package:messenger_app/helpr/loading_indicator.dart';
import 'package:messenger_app/utils/app_color.dart';
import 'package:sizer/sizer.dart';

class Messenger extends StatelessWidget {
  final ApiResController _apiResController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.network(
            "https://i.gifer.com/LLAK.gif",
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          Obx(
            () => _apiResController.isLoader.value
                ? const Center(child: Loading())
                : Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 5, top: 5, bottom: 5),
                    child: RawScrollbar(
                      controller: _apiResController.scrollController,
                      interactive: true,
                      thickness: 10,
                      thumbColor: AppColors.darkBlue,
                      radius: const Radius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ListView.builder(
                          controller: _apiResController.scrollController,
                          itemCount:
                              _apiResController.demoModel.value.result?.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.white),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white12
                                  ),
                                  child: Card(
                                    color: Colors.white12,
                                    child: Center(
                                      child: Text(
                                        _apiResController.demoModel.value
                                                .result?[index].message?.text ??
                                            "Not available data",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,)
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
