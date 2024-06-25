import 'package:bhumi_construction_app/constant/SVG_Picture.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:bhumi_construction_app/widget/custombutton_widget.dart';
import 'package:bhumi_construction_app/widget/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({super.key});

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightpink,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomAppBar(
            text: 'Add Inventory',
            icon: CupertinoIcons.back,
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  height: 45,
                  width: 153,
                  hintText: 'Item',
                  prefixIcon: SvgPicture.asset(
                    packaging,
                    height: 28.h,
                    width: 30.w,
                  ),
                  suffixIcon: const SizedBox(),
                ),
                const SizedBox(width: 20,),
                const TextFieldContainer(
                  height: 45,
                  width: 137,
                  hintText: 'QTY',
                  prefixIcon: SizedBox(),
                  suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                ),
            ],
          ),
            const SizedBox(height: 40,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldContainer(
                  height: 45,
                  width:137,
                  hintText: 'New',
                  prefixIcon: SizedBox(),
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                ),SizedBox(width: 20,),
                TextFieldContainer(
                  height: 45,
                  width: 137,
                  hintText: 'HCP',
                  prefixIcon:  SizedBox(),
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            TextFieldContainer(
              height: 45,
              width: 326,
              hintText: 'Upload Warranty',
              prefixIcon: SvgPicture.asset(
                warranty,
              ),
              suffixIcon: const SizedBox(),
            ),
            const SizedBox(height: 20,),
            const TextFieldContainer(
              height: 117,
              width: 326,
              hintText: 'Description.  hi this is my project',
              prefixIcon:  SizedBox(),
              suffixIcon:  SizedBox(),
            ),
            SizedBox(
              height: 50.h,
            ),
              CustomButton(
                height: 45,
              width: 273,
              text: 'Add', onPressed: () {  },

            )
        ],
      )
    );
  }
}
