import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contact extends StatelessWidget {
  const Contact({
    required this.userName,
    required this.email,
    required this.phone,
  });

  final String userName;
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 286,
      width: 177,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Image.asset("assets/images/leoMessi.png"),
              ),
              SizedBox(
                height: 177,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 8),
                  child: Align(
                    alignment: AlignmentGeometry.bottomLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 33,
                      width: 84,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.offWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        userName,
                        style: TextStyle(
                          color: AppColors.blueDark,
                          fontSize: 14,
                          fontWeight: .w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: AppColors.offWhite,

            width: 177,
            child: Column(
              children: [
                SizedBox(height: 17),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/Exclude.svg"),
                      SizedBox(width: 8),
                      Text(
                        email,
                        style: TextStyle(
                          color: AppColors.blueDark,
                          fontWeight: .w500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/Phone_call.svg"),
                      SizedBox(width: 8),
                      Text(
                        phone,
                        style: TextStyle(
                          color: AppColors.blueDark,
                          fontWeight: .w500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Colors.red,elevation: 0,foregroundColor: Colors.white ),
                    onPressed: () {

                }, child: Align(
                      alignment: Alignment.center,
                  child: Row(
                    spacing: 8,
                    children: [SvgPicture.asset("assets/icons/Union.svg",width: 13,),
                      Text("Delete",style: TextStyle(fontWeight: .w500,fontSize: 16,color: Colors.white),)
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
