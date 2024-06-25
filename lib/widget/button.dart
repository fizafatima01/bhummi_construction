import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

  class Button extends StatelessWidget {
    final String text;
    final VoidCallback onPressed;
    final dynamic? height;
    final dynamic? width;
    final Color? color;
    final Color? textColor;
    final dynamic? fontSize;

    const Button({
      Key? key,
      required this.text,
      this.height,
      this.fontSize,
      this.width,
      this.color,
      this.textColor,
      required this.onPressed,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        height: height ?? 68.h,
        width: width ?? 136.w,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: color ?? Colors.black,
            shadowColor: Colors.grey,
             elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 14.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      );
    }
  }
