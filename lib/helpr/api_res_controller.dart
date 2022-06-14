import 'dart:developer';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_service.dart';
import 'package:messenger_app/helpr/demo_model.dart';
import 'demo_model.dart';
import 'demo_new_model.dart';

class ApiResController extends GetxController {
  Rx<DemoModel> demoModel = DemoModel().obs;
  Rx<demo> demoApi = demo().obs;
  Rx<bool> isLoader = false.obs;

  @override
  void onInit() {
    userGetApiCall();
    userGetApi();
    super.onInit();
  }

  Future<void> userGetApiCall() async {
    try {
      isLoader.value = true;
      demoModel.value = await ApiResService.userGetApiCall();
    } catch (e, st) {
      isLoader.value = false;
      log("Error Message: $e : $st");
    } finally {
      isLoader.value = false;
    }
  }

  Future<void> userGetApi() async {
    try {
      isLoader.value = true;
      demoApi.value = await ApiResService.userGetApi();
    } catch (e, st) {
      isLoader.value = false;
      log("Error Message: $e : $st");
    } finally {
      isLoader.value = false;
    }
  }


}
