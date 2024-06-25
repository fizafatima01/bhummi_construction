
import 'package:bhumi_construction_app/view/BottomNavBar/bottom_navbar.dart';
import 'package:bhumi_construction_app/view/Create_Project/createproject.dart';
import 'package:bhumi_construction_app/view/Create_Project/listof_project.dart';
import 'package:bhumi_construction_app/view/Create_User/createuser.dart';
import 'package:bhumi_construction_app/view/ForgotPassword/forgetpassword.dart';
import 'package:bhumi_construction_app/view/Inventory/add_inventory.dart';
import 'package:bhumi_construction_app/view/Inventory/inventory.dart';
import 'package:bhumi_construction_app/view/Order/item_quantity.dart';
import 'package:bhumi_construction_app/view/Order/old_order.dart';
import 'package:bhumi_construction_app/view/Order/order_detail.dart';
import 'package:bhumi_construction_app/view/DatabaseMenu/database_menu.dart';
import 'package:bhumi_construction_app/view/Supplier/listof_supplier.dart';
import 'package:bhumi_construction_app/view/Supplier/supplier.dart';
import 'package:flutter/material.dart';
import 'package:bhumi_construction_app/main.dart';
import 'package:bhumi_construction_app/view/LoginPage/login.dart';
import 'package:bhumi_construction_app/view/NotificationPage/notification.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginPage = '/login';
  static const String forgetpassword = '/forget';
  static const String bottomnavbar = '/home';
  static const String oldorder = '/oldorder';
  static const String notification = '/notification';
  static const String createuser = '/createuser';
  static const String orderdetail = '/orderdetail';
  static const String itemQuantity ='/itemQuantity';
  static const String databsemenu = '/databasemenu';
  static const String createproject = '/createproject';
  static const String createsupplier = '/createsupplier';
  static const String listofproject = '/listofproject';
  static const String listofsupplier = '/listofsupplier';
  static const String inventory = '/inventory';
  static const String addinventory = '/addinventory';
}

final Map<String, WidgetBuilder> routes = {
  Routes.splashScreen: (context) => const SplashScreen(),
  Routes.loginPage: (context) => LoginPage(),
  Routes.forgetpassword: (context) => const Forgetpassword(),
  Routes.bottomnavbar: (context) =>   BottomNavbar(),
  Routes.oldorder: (context) => const OldOrder(),
  Routes.notification: (context) => const NotificationPage(),
  Routes.createuser: (context) => const CreateUser(),
  Routes.orderdetail: (context) => const OrderDetail(),
  Routes.itemQuantity: (context) => const ItemQuantity(),
  Routes.databsemenu: (context) => const DatabaseMenu(),
  Routes.createproject: (context) => const Createproject(),
  Routes.createsupplier: (context) => const CreateSupplier(),
  Routes.listofproject: (context) => Listofprojects(),
  Routes.listofsupplier: (context)=> ListofSupplier(),
  Routes.inventory:(context)=> Inventory(),
  Routes.addinventory:(context)=> AddInventory(),
};
