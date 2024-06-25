import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/SVG_Picture.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(
          text: 'Inventory',
          icon: CupertinoIcons.back,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              children: [
                Container(
                  color: greyColor,
                  height: 25.h,
                  width: 340.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Item',
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Qty',
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'State',
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'HGP/Barrow',
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 390.h,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 182.h,
                                width: 310.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(3, 4),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Item Name',
                                          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.w),
                                        Container(
                                          height: 26.h,
                                          width: 80.w,
                                          decoration: BoxDecoration(
                                            color: container,
                                            borderRadius: BorderRadius.circular(10.r),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 5.w),
                                                  child: SvgPicture.asset(
                                                    minusicon,
                                                    height: 4.h,
                                                    width: 4.w,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 5.w),
                                                  child: SvgPicture.asset(
                                                    plusicon,
                                                    height: 10.h,
                                                    width: 10.w,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Container(
                                          height: 26.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                            color: greyColor,
                                            borderRadius: BorderRadius.circular(10.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Unit',
                                              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        SvgPicture.asset(
                                          deleteicon,
                                          height: 30.h,
                                          width: 14.w,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                  height: 69.h,
                                  width: 293.w,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Description   This unit for  Product',
                                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30.h,
            right: 20.w,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.addinventory);
              },
              child: Container(
                height: 67.h,
                width: 65.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(3, 4),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      plusicon,
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(height: 5.h),
                    Center(
                      child: Text(
                        'Add Inventory',
                        style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
