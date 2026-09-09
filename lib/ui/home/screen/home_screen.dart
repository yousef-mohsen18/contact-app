import 'package:contact_app/core/resourses/assets_manager.dart';
import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueDark,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 26),
              child: Image.asset(AssetsManager.logo),
            ),
            SizedBox(height: 161),
            Align(
              alignment: Alignment.center,
              child: Image.asset(AssetsManager.purple),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "There is No Contacts Added Here",
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 20,
                  color: AppColors.offWhite,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () { },
                    style: IconButton.styleFrom(backgroundColor: AppColors.offWhite,elevation: 0,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))),
                    icon: SvgPicture.asset(
                      "assets/icons/add.svg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
