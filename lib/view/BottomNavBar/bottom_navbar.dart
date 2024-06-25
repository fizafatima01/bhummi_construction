import 'package:bhumi_construction_app/view/HomeScreen/homeScreen.dart';
import 'package:bhumi_construction_app/view/NotificationPage/notification.dart';
import 'package:bhumi_construction_app/view/Order/old_order.dart';
import 'package:bhumi_construction_app/view/Order/vieworders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OldOrder(),
    NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.r), // Assuming you're using flutter_screenutil for responsive design
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: SvgPicture.asset('assets/Group.svg', height: 22.h, width: 20.w),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: SvgPicture.asset('assets/Group (1).svg', height: 22.h, width: 20.w),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: SvgPicture.asset('assets/Group (2).svg', height: 22.h, width: 20.w),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: SvgPicture.asset('assets/Group (3).svg', height: 22.h, width: 20.w),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
