import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF9EF),
      body: Stack(
        children: [
          Positioned(
            top: 36.h,
            left: 10.w,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          Positioned(
            top: 120.h,
            left: 133.w,
            child: CircleAvatar(
              radius: 40.r,
              backgroundColor: Color(0xFFFEB122),
              child: Icon(
                Icons.email_outlined,
                size: 50.sp,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 234.h,
            left: 79.w,
            child: Text(
              'Check your email',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
          ),
          Positioned(
            top: 290.h,
            left: 46.w,
            height: 30.h,
            width: 268.w,
            child: Center(
              child: Text(
                'We’ve sent a password recovery instruction to your email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          Positioned(
            top: 375.h, // Adjust the top value to ensure proper spacing
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                    (index) => Container(
                  width: 44.w,
                  height: 44.h,
                  margin: EdgeInsets.all(7.w), // Add some spacing between the rectangles
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF), // Change to your desired color
                    borderRadius: BorderRadius.circular(8.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.r,
                        spreadRadius: 2.r,
                        offset: Offset(2, 2),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ], // Optional: Rounded corners
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 473.h,
            left: 95.w,
            height: 17.h,
            width: 171.w,
            child: Center(
              child: Text(
                'Didn’t receive the email?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp,
                  color: Color(0xFF9E9696),
                ),
              ),
            ),
          ),
          Positioned(
            top: 499.h,
            left: 142.w,
            height: 17.h,
            width: 77.w,
            child: Center(
              child: Text(
                'Send Again',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          Positioned(
            top: 590.h,
            left: 20.w,
            height: 50.h,
            width: 320.w,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.loginPage);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  minimumSize: Size(320.w, 50.h),
                ),
                child: Text(
                  'Password Change',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
