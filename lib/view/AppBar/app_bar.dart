import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomAppBar({
    required this.text,
    required this.icon,
    super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.white,
          title: Text(
            text,
            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
            icon: const Icon(CupertinoIcons.back,),onPressed: (){
            Navigator.of(context).pop();
          },
          ),
    );
  }
}
