import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatabaseList extends StatelessWidget {
  final Color containerColor;
  final String text;
  final VoidCallback onPressed;


  const DatabaseList({
    required this.containerColor,
    required this.text,
    required this.onPressed,
    Key? key,
  }):  super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child:Container(
      height: 51.h,
      width: 326.w,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(10.r)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      ),
    );
  }
}
