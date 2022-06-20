import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/helpr/api_res_controller.dart';
import 'package:messenger_app/helpr/loading_indicator.dart';
import 'package:messenger_app/utils/app_color.dart';
import 'package:sizer/sizer.dart';

// class TopBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       child: Container(
//         height: 300.0,
//       ),
//       painter: CurvePainter(),
//     );
//   }
// }

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ApiResController _apiResController = Get.find();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   _apiResController.userGet();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Stack(
        children: [
          // ClippedPartsWidget(
          //   top: Container(
          //     color: AppColors.backgroundColor,
          //   ),
          //   bottom: Container(
          //     color: AppColors.darkBlue,
          //   ),
          //   splitFunction: (Size size, double x) {
          //     final normalizedX = x / size.width * 2 * pi;
          //     final waveHeight = size.height / 15;
          //     final y = size.height / 2 - sin(normalizedX) * waveHeight;
          //
          //     return y;
          //   },
          // ),
          CustomPaint(
            child: Container(
              height: 300.0,
            ),
            painter: CurvePainter(),
          ),
          Obx(
            () => Padding(
              padding: EdgeInsets.only(
                left: 6.w,
                right: 6.w,
                top: 3.h,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        obscuringCharacter: "\uDD91",
                        controller: _apiResController.textController,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(bottom: 10, left: 10),
                          labelText: "Search",
                          labelStyle: const TextStyle(color: AppColors.grey),
                          floatingLabelStyle:
                              const TextStyle(color: AppColors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: AppColors.darkBlue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: AppColors.darkBlue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          try {
                            await _apiResController.userGets;
                          } catch (e) {
                            // log("message12$e");
                          }

                          // final text = Text("${_apiResController.textController.text}");
                          print("text1212${_apiResController.userGets}");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.darkBlue),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
                            child: const Text(
                              "Submit",
                              style: TextStyle(color: AppColors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Center(
                  //   child: ElevatedButton(onPressed: ()async{
                  //     print("object12111${_apiResController.userGets()}");
                  //     await   _apiResController.userGets();
                  //     print("object12111111${_apiResController.userGets()}");
                  //     _apiResController.textController.clear();
                  //     print("object121${_apiResController.userGets()}");
                  //   }, child: const Text("Submit")),
                  // ),

                  Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: _apiResController.isLoader.value
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
                                  controller:
                                      _apiResController.scrollController,
                                  itemCount: _apiResController
                                      .getDemo.value.result?.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                              top: 5,
                                              bottom: 5),
                                          child: Text(
                                            _apiResController
                                                    .getDemo
                                                    .value
                                                    .result?[index]
                                                    .message
                                                    ?.text ??
                                                "Not available data",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Color colorOne = Colors.red;
Color? colorTwo = Colors.red[300];
Color? colorThree = Colors.red[100];

final appTheme = ThemeData(
  primarySwatch: Colors.red,
);

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.90, size.width, 0);
    path.close();

    paint.color = colorThree!;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(
        size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo!;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BackGroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(0, size.height * 0.2);

    path.quadraticBezierTo(size.width * 0.135, size.height * 0.178,
        size.width * 0.281, size.height * 0.0889);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.0113, size.width * 0.8, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.width * 0.8);
    path.close();
    paint.color = Colors.yellowAccent;
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0, size.height * 0.4);

    path.quadraticBezierTo(size.width * 0.4, size.height * 0.5,
        size.width * 0.6, size.height * 0.25);

    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.15, size.width, size.height * 0.1);

    path.lineTo(0, 0);
    paint.color = Colors.black87;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 220);
//     path.quadraticBezierTo(
//         size.width / 4, 160 /*180*/, size.width / 2, 175);
//     path.quadraticBezierTo(
//         3 / 4 * size.width, 190, size.width, 130);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

class ClippedPartsWidget extends StatelessWidget {
  final Widget top;
  final Widget bottom;
  final double Function(Size, double) splitFunction;

  ClippedPartsWidget({
    required this.top,
    required this.bottom,
    required this.splitFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // I'm putting unmodified top widget to back. I wont cut it.
        // Instead I'll overlay it with clipped bottom widget.
        top,
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: FunctionClipper(splitFunction: splitFunction),
            child: bottom,
          ),
        ),
      ],
    );
  }
}

class FunctionClipper extends CustomClipper<Path> {
  final double Function(Size, double) splitFunction;

  FunctionClipper({required this.splitFunction}) : super();

  Path getClip(Size size) {
    final path = Path();

    // move to split line starting point
    path.moveTo(0, splitFunction(size, 0));

    // draw split line
    for (double x = 1; x <= size.width; x++) {
      path.lineTo(x, splitFunction(size, x));
    }

    // close bottom part of screen
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // I'm returning fixed 'true' value here for simplicity, it's not the part of actual question
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}
