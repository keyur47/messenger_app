import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


Widget textField({required TextEditingController? controller,required int maxLines,required Color color,required TextStyle textStyle,required TextStyle style,
    //bool? showCursor,
    required FocusNode? focusNode,
    required String? hintText,required Color cursorColor,
    required TextInputType textInputType,
  required BoxBorder? boxBorder,
  ValueChanged<String>? valueChanged,
  FormFieldValidator<String>? validator,
  Widget? suffixIcon,
    required VoidCallback onTap}) {
  return Container(
    decoration: BoxDecoration(
      border: boxBorder,
        color: color, borderRadius: BorderRadius.circular(2.w)),
    child: Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: TextFormField(
        onTap: onTap,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: textStyle,
          suffixIcon: suffixIcon
        ),
        controller: controller,
        onChanged: valueChanged,
        // showCursor: showCursor,
        style: style,
        keyboardType: textInputType,
        validator: validator,
        // focusNode: focusNode,
        cursorColor: cursorColor,
      ),
    ),
  );
}
