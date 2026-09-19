import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/resourses/colors_manager.dart';

class DeleteButton extends StatelessWidget {

  const DeleteButton({super.key, required this.Delete});
  final VoidCallback Delete;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:Delete,
      icon: SvgPicture.asset("assets/icons/delete.svg",height: 56,width: 56,),
        style: IconButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
    ),

    );
  }
}
