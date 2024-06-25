import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetContainer extends StatelessWidget {
  final Color containerColor;
  final String text;
  final String datetime;
  final IconData icon;

  WidgetContainer({
    required this.containerColor,
    required this.text,
    required this.icon,
    Key? key,
  }) : datetime = DateTime.now().toString(),super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),

        width: 326.0.w,
        height: 67.0.h,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0.r),
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  datetime,
                  style: const TextStyle(fontSize: 13, color: Color(0xFF838282),fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              height: 27,
              width:26,
              child: Column(
                children: [
                  Icon(
                    icon,size: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}