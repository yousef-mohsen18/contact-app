import 'package:contact_app/ui/nav_bar_screen/screen/navbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resourses/colors_manager.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return NavbarScreen();
          },
        );
      },
      style: IconButton.styleFrom(
        backgroundColor: AppColors.offWhite,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
      ),
      icon: SvgPicture.asset("assets/icons/add.svg"),
    );
  }
}
