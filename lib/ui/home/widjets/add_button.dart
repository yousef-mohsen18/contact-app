import 'package:contact_app/ui/nav_bar_screen/screen/navbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resourses/colors_manager.dart';

class AddButton extends StatelessWidget {
  final void Function(Map<String, dynamic> user) onUserAdded;
  const AddButton({super.key, required this.onUserAdded});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return NavbarScreen();
            },
          );

          if (result != null) {
            onUserAdded(result);
          }
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
