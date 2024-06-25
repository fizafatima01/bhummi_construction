import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/assets_images.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/NotificationPage/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE7E7),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 77.h),
            child: Container(
              height: 600.h,
              width: 356.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.r),
                border: Border.all(color: divider, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 4),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(left: 30.w, right: 10.w, top: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Notification",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 36.h,
                          width: 95.w,
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(17.r),
                          ),
                          child: Center(
                            child: Text(
                              "5 New",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      children: [
                        NotificationItem(
                             name: 'SPV Name', type: 'Project Name',image: profile2,),
                        NotificationItem(
                          name: 'SPV Name', type: 'Project Name',image: profile2,),
                        NotificationItem(
                          name: 'SPV Name', type: 'Project Name',image: profile1,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250.h,
                  ),
                  SizedBox(
                    height: 56.h,
                    width: 325.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: const BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.createuser);
                      },
                      child: Text(
                        "See all Notification ",
                        style: TextStyle(
                            color: blueColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
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