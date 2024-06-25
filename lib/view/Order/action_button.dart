import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildActionButton(String asset, String label, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 110.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(3, 4),
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(asset, height: 57.h, width: 56.w),
          Text(label, style: TextStyle(color: Colors.black, fontSize: 14.sp)),
        ],
      ),
    ),
  );
}
