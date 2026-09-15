import 'dart:io';

import 'package:contact_app/core/resourses/appv_alidator.dart';
import 'package:contact_app/core/resourses/route_manager.dart';
import 'package:contact_app/ui/nav_bar_screen/widjets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resourses/colors_manager.dart';

class NavbarScreen extends StatefulWidget {
  NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  String userName = " ";
  String email = " ";
  String phone = " ";


  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blueDark,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
        ),
        child: SizedBox(
          height: 447,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: SizedBox(
                  height: 146,
                  child: Row(
                    spacing: 16,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/Rectangle 3.png"),
                          Lottie.asset("assets/images/Image Not Preview.json"),
                        ],
                      ),
                      SizedBox(
                        width: 240,
                        child: Column(
                          children: [
                            SizedBox(height: 16),
                            Text(
                              userName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: .w500,
                              ),
                            ),
                            SizedBox(height: 16),
                            Divider(height: 12, color: AppColors.offWhite),
                            SizedBox(height: 10),
                            Text(
                              email,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: .w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Divider(height: 12, color: AppColors.offWhite),
                            SizedBox(height: 5),
                            Text(
                              phone,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: .w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6),
              CustomTextFiled(textInputAction: .next,
                keyboardType: .name,
                hintText: "Enter User Name",
                controller: userNameController,
                onChanged: (value) {
                  setState(() {
                    userName = value;
                  });
                },
              ),
              SizedBox(height: 8),
              CustomTextFiled(
                textInputAction: .next,
                keyboardType: .emailAddress,
                validator: (email) =>AppvAlidator.emailValidator(email) ,

                hintText: "Enter User Email",
                controller: emailController,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 5),
              CustomTextFiled(
                textInputAction: .done,
                keyboardType: .phone,
                hintText: "Enter User Phone",
                controller: phoneController,
                onChanged: (value) {
                  setState(() {
                    phone = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 8,
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        {
                          'userName': userNameController.text,
                          'email': emailController.text,
                          'phone': phoneController.text,
                        },
                      );
                    },
                    child: Text(
                      "Enter user",
                      style: TextStyle(
                        color: AppColors.blueDark,
                        fontWeight: .w400,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.offWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
