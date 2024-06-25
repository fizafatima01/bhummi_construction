import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/SVG_Picture.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/Order/action_button.dart';
import 'package:bhumi_construction_app/view/Order/detaiil_row.dart';
import 'package:bhumi_construction_app/view/Order/order_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);
  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Order #001",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "19-06-2021",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  height: 51.h,
                  width: 171.w,
                  decoration: BoxDecoration(
                    color:
                        greyColor, // Assuming darkGreyColor is defined somewhere
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child:GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.itemQuantity);
                      },
                    child:Text(
                      "Complete",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            const OrderContainer(),
            SizedBox(height: 20.h),
            Divider(color: divider, thickness: 1.h),
            buildDetailRow(
                iconPath: suppliericon, title: 'Supplier', value: 'john'),
            SizedBox(height: 10.h),
            Divider(color: divider, thickness: 1.h),
            buildDetailRow(
                iconPath: clockicon,
                title: "Last Updated",
                value: "20-01-2023"),
            SizedBox(height: 10.h),
            Divider(color: divider, thickness: 1.h),
            buildDetailRow(
                iconPath: mark, title: "Delivered", value: "Partially"),
            SizedBox(height: 10.h),
            Divider(color: divider, thickness: 1.h),
            SizedBox(height: 20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildActionButton(invoiceicon, "Upload Invoice", () {}),
                    SizedBox(width: 20.w),
                    buildActionButton(attachfileicon, "Attach file", () {}),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildActionButton(invoiceicon, "Download Invoice", () {}),
                    SizedBox(width: 20.w),
                    buildActionButton(downloadicon, "Download File", () {}),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
