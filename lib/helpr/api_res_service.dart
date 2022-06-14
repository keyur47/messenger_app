import 'dart:developer';

import 'package:messenger_app/helpr/demo_model.dart';
import 'package:messenger_app/helpr/network_helper.dart';

import 'demo_new_model.dart';

class ApiResService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  static Future<DemoModel> userGetApiCall() async {
    try {
      final request = await _networkAPICall.get('bot5528915618:AAHptfftqc-gRyhqYCPqx3Hh9dPhxclfcvw/getUpdates');
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
      final request = await _networkAPICall.get('bot5510216637:AAGAxwldjZrrGougVCY-VVCYXUZ87kWedQg/getUpdates');
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
}
