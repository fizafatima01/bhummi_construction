import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/Order/vieworders.dart';
import 'package:bhumi_construction_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class   OldOrder extends StatelessWidget {
  const OldOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon:  Icon(Icons.arrow_back_ios,size: 22.sp,),
        ),
        title:  Text(
          'Orders',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 20.h),
                child: Row(
                  children: [
                    Container(
                      height: 36.h,
                      width: 269.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(3, 4),
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 10.w),
                        child: Row(
                          children: [
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                                  border: InputBorder.none,
                                  hintText: 'Orders',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                            SvgPicture.asset(
                              'assets/searchicon.svg',
                              height: 18.h,
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 7.w),
                    SvgPicture.asset(
                      'assets/filtericon.svg',
                      height: 30.h,
                      width: 28.w,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friday',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA6A6A6),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '19-06-2021',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.orderdetail);
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              const ViewOrder(
                title: 'First order',
                icon: Icons.attach_file,
                status: 'Active',
                date: '19-06-2021',
                statusColor: Colors.red,
                titleColor: Colors.red,
                dateColor: Colors.red,
                iconColor: Colors.red,
              ),
              SizedBox(height: 8.h),
              const ViewOrder(
                title: 'Second order',
                icon: Icons.attach_file,
                status: 'Pending',
                date: '19-06-2021',
                statusColor: Colors.yellow,
                titleColor: Colors.yellow,
                dateColor: Colors.yellow,
                iconColor: Colors.yellow,
              ),
              SizedBox(height: 8.h),
              const ViewOrder(
                title: 'Third order',
                icon: Icons.attach_file,
                status: 'Complete',
                date: '19-06-2021',
                statusColor: Colors.green,
                titleColor: Colors.green,
                dateColor: Colors.green,
                iconColor: Colors.green,
              ),
              SizedBox(width: 6.w,),
              const Divider(color: divider,thickness: 2),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: 'DOCS',
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.notification);
                    },
                  ),
                  Button(
                    text: 'INVENTORY',
                    color: const Color(0xFFBED9FC),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.inventory);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
