import 'package:bhumi_construction_app/constant/SVG_Picture.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:bhumi_construction_app/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listofprojects extends StatefulWidget {
  const Listofprojects({super.key});

  @override
  State<Listofprojects> createState() => _ListofprojectsState();
}

class _ListofprojectsState extends State<Listofprojects> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(
          text: 'Remove Project',
          icon: CupertinoIcons.back,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  Container(
                    height: 36.h,
                    width: 319.w,
                    decoration: BoxDecoration(
                      color: lightgrey,
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8.0),
                                border: InputBorder.none,
                                hintText: 'Mobile App',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            searchicon,
                            height: 18.h,
                            width: 20.w,
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
          Column(
              children: [
                const SizedBox(height: 40),
                CustomText(
                  isSelected: isSelected1,
                  text: 'Mobile design',
                  date: '10 Dec, 2024',
                  onCheckboxChanged: (value) {
                    setState(() {
                      isSelected1 = value;
                    });
                  },
                  onEdit: () {
                  },
                  onDelete: () {
                  },
                ),
                CustomDivider(),
                const SizedBox(height: 25),
                CustomText(
                  isSelected: isSelected2,
                  text: 'Website',
                  date: '10 Dec, 2024',
                  onCheckboxChanged: (value) {
                    setState(() {
                      isSelected2 = value;
                    });
                  },
                  onEdit: () {
                  },
                  onDelete: () {
                  },
                ),
                CustomDivider(),
                const SizedBox(height: 25),
                CustomText(
                  isSelected: isSelected3,
                  text: 'Website',
                  date: '10 Dec, 2024',
                  onCheckboxChanged: (value) {
                    setState(() {
                      isSelected3 = value;
                    });
                  },
                  onEdit: () {
                  },
                  onDelete: () {
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
