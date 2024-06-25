import 'dart:ui';
import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:bhumi_construction_app/widget/custombutton_widget.dart';
import 'package:bhumi_construction_app/widget/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateSupplier extends StatefulWidget {
  const CreateSupplier({super.key});

  @override
  State<CreateSupplier> createState() => _CreateSupplierState();
}

class _CreateSupplierState extends State<CreateSupplier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(
          text: 'Create a Supplier',
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
                hintText: 'WA Number',
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
                hintText: 'Area',
                prefixIcon: SvgPicture.asset(
                  'assets/Group7.svg',
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              SizedBox(
                height: 100.h,
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