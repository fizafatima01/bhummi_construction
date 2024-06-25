import 'dart:ui';
import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:bhumi_construction_app/view/Create_Project/listof_project.dart';
import 'package:bhumi_construction_app/view/Create_Project/listof_project.dart';
import 'package:bhumi_construction_app/widget/custombutton_widget.dart';
import 'package:bhumi_construction_app/widget/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Createproject extends StatefulWidget {
  const Createproject({super.key});

  @override
  State<Createproject> createState() => _CreateprojectState();
}

class _CreateprojectState extends State<Createproject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(
          text: 'Create Project',
          icon: CupertinoIcons.back,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFieldContainer(
                hintText: 'name',
                prefixIcon: SvgPicture.asset(
                  'assets/Component 3.svg',
                ),
                suffixIcon: const SizedBox(),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldContainer(
                hintText: 'location',
                prefixIcon: SvgPicture.asset(
                  'assets/Component 6.svg',
                ),
                suffixIcon: const Icon(
                  Icons.visibility,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldContainer(
                hintText: 'Assign SPV',
                prefixIcon: SvgPicture.asset(
                  'assets/Group7.svg',
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 117,
                width: 326,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: const Text(
                  'Description   Hi this is my app',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                height: 46,
                width: 273,
                text: 'Create',
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.databsemenu);
                },
              )
             ],
          ),
        ),
      ),
    );
  }
}