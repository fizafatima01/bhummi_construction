import 'package:bhumi_construction_app/Routes/routes.dart';
import 'package:bhumi_construction_app/widget/custombutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF9EF), // Set background color here if needed
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(height: 137), // Top spacing
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 313,
                      height: 121,
                      child: Text(
                        'Welcome To Bhumi Construction',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50), // Space between title and form
              SizedBox(
                height: 60, // Set desired height
                width: 326, // Set width to fill the parent
                child: Card(
                  color: const Color(0xFFFFFFFF), // Set background color of card
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0), // Set desired padding
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: InputBorder.none, // Remove outline
                        prefixIcon: Icon(Icons.person_outline,
                            color: Color(0xFFD2C52B)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h), // Space between fields
              SizedBox(
                height: 60, // Set desired height
                width: 326, // Set width to fill the parent
                child: Card(
                  color: Color(0xFFFFFFFF), // Set background color of card
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0), // Set desired padding
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none, // Remove outline
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Color(0xFFD2C52B)),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Remember me'),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.forgetpassword);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.bottomnavbar);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
