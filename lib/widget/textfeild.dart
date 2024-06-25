import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final double? height;
  final double? width;

  const TextFieldContainer({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45.h,
      width: width ?? 326.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: prefixIcon,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 12.sp),
                  suffixIcon: suffixIcon,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}