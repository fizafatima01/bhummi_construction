import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewOrder extends StatelessWidget {
  final String title;
  final String status;
  final String date;
  final Color statusColor;
  final Color titleColor;
  final Color dateColor;
  final IconData icon;
  final Color iconColor;

  const ViewOrder({
    required this.title,
    required this.status,
    required this.date,
    required this.statusColor,
    required this.titleColor,
    required this.dateColor,
    required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 65,
        width: 360,
        child: Column(
          children: [
            const Divider(color: divider, thickness: 2),
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    SizedBox(width: 6.w),
                    Icon(
                      icon,
                      color: iconColor,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      status,
                      style: TextStyle(color: statusColor),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      date,
                      style: TextStyle(color: dateColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}