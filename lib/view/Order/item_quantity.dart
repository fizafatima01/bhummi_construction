import 'package:bhumi_construction_app/constant/SVG_Picture.dart';
import 'package:bhumi_construction_app/constant/assets_images.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({super.key});

  @override
  _ItemQuantityState createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(CupertinoIcons.back, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text(
                    "Order detail",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Checkbox(
                      value: isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          isSelected = value ?? false;
                        });
                      },
                      checkColor: Colors.white, // The color of the check mark
                      fillColor: MaterialStateProperty.all(Colors.grey)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Text(
                      'Select All',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
                  Text(
                    'Delete',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  color: greyColor,
                  height: 25.h,
                  width: 309.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Item',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Qty',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Unit',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
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
                                    offset: const Offset(3, 4),
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
                                      Checkbox(
                                          value: isSelected,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isSelected = value ?? false;
                                            });
                                          },
                                          checkColor: Colors
                                              .white, // The color of the check mark
                                          fillColor: MaterialStateProperty.all(
                                              Colors.grey)),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        child: Text(
                                          'Item Name',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Container(
                                        height: 26.h,
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          color: container,
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
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
                                                padding:
                                                    EdgeInsets.only(right: 5.w),
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
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Unit',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold),
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 60, horizontal: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                height: 69.h,
                                width: 293.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(2, 2),
                                      blurRadius: 3,
                                      spreadRadius: 4,
                                    ),
                                  ],
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Description   This unit for  Product',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(
                    text: "Approve",
                    color: Colors.black,
                    textColor: Colors.white,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              side: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            child: Container(
                              height: 483.h,
                              width: 327.w,
                              padding: EdgeInsets.all(20.w),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Suppliers",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: isSelected,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isSelected = value ?? false;
                                            });
                                          },
                                          checkColor: Colors
                                              .white, // The color of the check mark
                                          fillColor: MaterialStateProperty.all(
                                              Colors.grey)),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                        child: Row(children: [
                                          CircleAvatar(
                                            radius: 25.r,
                                            backgroundImage:
                                                AssetImage(profile1),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Ali",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                  Row(),
                                  Row(),
                                  Row(),
                                  SizedBox(
                                    height: 65.h,
                                    width: 296.w,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all<Color>(
                                                Colors.white),
                                        shape: WidgetStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            side: const BorderSide(
                                                color: blueColor),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "Approve",
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
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _buildButton(
                    text: "Revision",
                    color: lightblue,
                    textColor: Colors.black,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
      {required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 68.h,
        width: 136.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(3, 4),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
