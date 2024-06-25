import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/assets_images.dart';
import 'package:bhumi_construction_app/widget/custombutton_widget.dart';
import 'package:bhumi_construction_app/widget/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE7E7),
      appBar: AppBar(
        backgroundColor: Color(0xFFECE7E7),
        title: Text(
          "Create a User",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage(profile3),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Color(0xFFD9D9D9),
                      child: Icon(
                        Icons.add_rounded,
                        size: 35.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                TextFieldContainer(
                  hintText: 'Username',
                  prefixIcon: SvgPicture.asset(
                    'assets/Component 3.svg',
                    height: 28.h,
                    width: 30.w,
                  ),
                  suffixIcon: const SizedBox(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFieldContainer(
                  hintText: 'Password',
                  prefixIcon: SvgPicture.asset(
                    'assets/Component 6.svg',
                    height: 24.h,
                    width: 27.w,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFieldContainer(
                  hintText: 'Access (spv,purch,acct)',
                  prefixIcon: SvgPicture.asset(
                    'assets/Group7.svg',
                    height: 28.h,
                    width: 30.w,
                  ),
                  suffixIcon: const SizedBox(),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              height: 46,
              width: 273,
              text: 'Create',
              onPressed: () {
                Navigator.pushNamed(context, Routes.databsemenu);
              },
            )
          ],
        ),
      ),
    );
  }
}
