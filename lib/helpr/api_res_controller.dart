import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_service.dart';
import 'package:messenger_app/helpr/demo_model.dart';
import 'package:messenger_app/model/getmodel.dart';
import 'package:messenger_app/model/model.dart';
import 'demo_model.dart';
import 'demo_new_model.dart';

class ApiResController extends GetxController {
  Rx<DemoModel> demoModel = DemoModel().obs;
  Rx<demo> demoApi = demo().obs;
  Rx<GetDemo> getDemo = GetDemo().obs;
  Rx<AddDemo> addDemo = AddDemo().obs;
  Rx<bool> isLoader = false.obs;
  ScrollController scrollController = ScrollController();
  TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    userGetApiCall();
    userGetApi();
    userGetAdd();
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

  Future<void> userGetAdd() async {
    try {
      isLoader.value = true;
      getDemo.value = await ApiResService.userGetAdd();
    } catch (e, st) {
      isLoader.value = false;
      log("Error Message: $e : $st");
    } finally {
      isLoader.value = false;
    }
  }

  Future<AddDemo?> userGets() async {
    try {
      isLoader.value = true;
      addDemo.value = await ApiResService.userGet("textController.text");
       print("sfsdfsf${textController.text}");
    } catch (e, st) {
      isLoader.value = false;
      log("Error Message: $e : $st");
    } finally {
      isLoader.value = false;
    }
    return null;
  }


}
