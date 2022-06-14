// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';
// import 'package:aws_s3/aws_s3.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:messenger_app/helpr/demo_model.dart';
// import 'package:messenger_app/modules/bottomnavigationbar/homepage/people.dart';
//
//
// class SplashController extends GetxController {
//   ConnectivityResult _connectionStatus = ConnectivityResult.none;
//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   @override
//   void onInit() async {
//     super.onInit();
//     awsInit();
//     await Future.delayed(const Duration(seconds: 3));
//     // Navigation.popAndPushNamed(Routes.dashBordScreen);
//     checkFirstSeen();
//   }
//
//   @override
//   void dispose() {
//     _connectivitySubscription.cancel();
//     super.dispose();
//   }
//
//   Future checkFirstSeen() async {
//     initConnectivity();
//     _connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }
//
//   void awsInit() async {
//     try {
//       final AwsS3 awsS3 = AwsS3(
//         awsFolderPath: '',
//         file: File(''),
//         fileNameWithExt: '',
//         poolId: '',
//         region: Regions.US_WEST_2,
//         bucketName: "StringsUtils.aWSBucketName",
//       );
//       await awsS3.initAWS(
//         "AppConfig.awsAccessKey",
//         "AppConfig.awsSecretKey",
//       );
//     } catch (e) {
//       log("AWS Error-->$e");
//     }
//   }
//
//   Future<void> initConnectivity() async {
//     late ConnectivityResult result;
//     result = await (Connectivity().checkConnectivity());
//     if (result == ConnectivityResult.mobile) {
//        if
//         Get.to(People());
//       // I am connected to a mobile network.
//       log("I am connected to a mobile network");
//     }  else {
//       log("I am not connected to a mobile or Wifi network");
//       return internetCheck();
//     }
//     return _updateConnectionStatus(result);
//   }
//
//   internetCheck() {
//     return showDialog(
//       barrierDismissible: false,
//       context: Get.context!,
//       builder: (context) {
//         return Dialog(
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           backgroundColor: AppColors.white,
//           child: CheckNetwork(context),
//         );
//       },
//     );
//   }
//
//   Widget CheckNetwork(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding:
//           EdgeInsets.symmetric(vertical: SizeUtils.verticalBlockSize * 3),
//           child: Text(
//             StringsUtils.internetCheckError,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: AppColors.black,
//                 fontWeight: FontWeight.w600,
//                 fontSize: SizeUtils.fSize_20()),
//           ),
//         ),
//         Container(
//           height: 1,
//           color: AppColors.grey[90]!,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 initConnectivity();
//                 Get.back();
//               },
//               child: const Text(
//                 StringsUtils.check,
//                 style: TextStyle(
//                     color: AppColors.black,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 18),
//               ),
//             ),
//             Container(
//               width: 1,
//               height: 52,
//               color: AppColors.grey[90]!,
//             ),
//             GestureDetector(
//               onTap: () async {
//                 if (Platform.isAndroid) {
//                   SystemNavigator.pop();
//                 } else if (Platform.isIOS) {
//                   exit(0);
//                 }
//               },
//               child: const Text(
//                 StringsUtils.ok,
//                 style: TextStyle(
//                   color: AppColors.red,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus = result;
//   }
// }
