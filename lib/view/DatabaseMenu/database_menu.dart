import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/AppBar/app_bar.dart';
import 'package:bhumi_construction_app/view/DatabaseMenu/database_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatabaseMenu extends StatefulWidget {
  const DatabaseMenu({super.key});

  @override
  State<DatabaseMenu> createState() => _DatabaseMenuState();
}

class _DatabaseMenuState extends State<DatabaseMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomAppBar(
          text: 'Database Menu',
          icon: CupertinoIcons.back,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DatabaseList(
              containerColor: greyColor,
              text: 'Create Project',
              onPressed: () {
                Navigator.pushNamed(context, Routes.createproject);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DatabaseList(
              containerColor: greyColor,
              text: 'Remove/Modifier Project',
              onPressed: () {
                Navigator.pushNamed(context, Routes.listofproject);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DatabaseList(
              containerColor: greyColor,
              text: 'Create Supplier',
              onPressed: () {
                Navigator.pushNamed(context, Routes.createsupplier);

              },
            ),
            const SizedBox(
              height: 20,
            ),
            DatabaseList(
              containerColor: greyColor,
              text: 'Remove/Modifier Supplier',
              onPressed: () {
                Navigator.pushNamed(context, Routes.listofsupplier);
              },
            ),
          ],
        ),
      ),
    );
  }
}
