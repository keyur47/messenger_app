import 'package:flutter/cupertino.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:messenger_app/utils/app_color.dart';

class Loading extends StatelessWidget {
  final Color? colors;

  const Loading({this.colors, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 30,
        width: 25,
        child: LoadingIndicator(
          indicatorType: Indicator.lineSpinFadeLoader,
          colors: [colors ?? AppColors.darkBlue],
          strokeWidth: 2,
        ),
      ),
    );
  }
}