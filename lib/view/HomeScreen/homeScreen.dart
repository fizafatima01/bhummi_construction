import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/constant/colors.dart';
import 'package:bhumi_construction_app/view/HomeScreenWidget/ColumnContainer.dart';
import 'package:bhumi_construction_app/view/HomeScreenWidget/Rowcontainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/Ellipse 1.png'),
        title: const Text(
          'Muhammad Bilal',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildContainer(
                  containerColor: lightGrey,
                  text: "Supplier",
                  circleColor: Color(0xFFFAAF27),
                  onpressed: (){},
                ),
                 BuildContainer(
                    containerColor: lightGrey,
                    text: "SPV",
                    circleColor: Color(0xFFFAAF27),
                   onpressed: (){},
                  ),
                   BuildContainer(
                    containerColor: lightGrey,
                    text: "Order",
                    circleColor: Color(0xFFFAAF27),
                     onpressed: (){ Navigator.pushNamed(context, Routes.oldorder);
                      },
                  ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            WidgetContainer(
              containerColor: Color(0xFFFFF9AF),
              text: "Mobile Design",
              icon: Icons.check,
            ),
            WidgetContainer(
              containerColor: lightGrey,
              text: "Mobile Development",
              icon: Icons.check,
            ),
            WidgetContainer(
              containerColor: lightGrey,
              text: "Web",
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
