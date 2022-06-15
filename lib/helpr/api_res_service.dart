import 'dart:convert';
import 'dart:developer';

import 'package:messenger_app/helpr/demo_model.dart';
import 'package:messenger_app/helpr/network_helper.dart';
import 'package:messenger_app/model/getmodel.dart';
import 'package:messenger_app/model/model.dart';
import 'package:messenger_app/utils/appconfig.dart';

import 'demo_new_model.dart';

class ApiResService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  static Future<DemoModel> userGetApiCall() async {
    try {
      final request = await _networkAPICall
          .get('bot5528915618:AAHptfftqc-gRyhqYCPqx3Hh9dPhxclfcvw/getUpdates');
      if (request != null) {
        return DemoModel.fromJson(request);
      }
    } catch (e) {
      log("Discover Api Error $e");
      rethrow;
    } finally {
      //loader end
    }
    return DemoModel();
  }

  static Future<demo> userGetApi() async {
    try {
      final request = await _networkAPICall
          .get('bot5510216637:AAGAxwldjZrrGougVCY-VVCYXUZ87kWedQg/getUpdates');
      if (request != null) {
        return demo.fromJson(request);
      }
    } catch (e) {
      log("Discover Api Error $e");
      rethrow;
    } finally {
      //loader end
    }
    return demo();
  }

  static Future<GetDemo> userGetAdd() async {
    try {
      final request = await _networkAPICall
          .get('bot5344532437:AAENzt0yszEr2q0-Br5JPmbt9OjDdsGy3Rw/getUpdates');
      if (request != null) {
        return GetDemo.fromJson(request);
      }
    } catch (e) {
      log("Discover Api Error $e");
      rethrow;
    } finally {
      //loader end
    }
    return GetDemo();
  }

  static Future<AddDemo> userGet(String text) async {
    try {
      final request = await _networkAPICall.get("bot5344532437:AAENzt0yszEr2q0-Br5JPmbt9OjDdsGy3Rw/sendMessage?chat_id=927242968&text=$text");
      log("Api Call driver Log-result-->$request");
        final AddDemo addDemo = AddDemo.fromJson(request);
        return addDemo;
    } catch (e) {
      log("Discover Api Error 122:- $e");
      rethrow;
    }
  }
}

//
// try {
// final header = {
// 'Content-Type': 'application/json',
// };
// var body = json.encode({"email": email, "password": password});
// log("signIn body --->$body");
// final result = await _networkAPICall.post(AppConfig.signIn,
// body: body, header: header);
// final UserDocModel userModel = UserDocModel.fromJson(result);
// return userModel;
