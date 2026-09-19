import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resourses/colors_manager.dart';

class NoContactsWidget extends StatelessWidget {
  const NoContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 161),
        Align(
          alignment: Alignment.center,
          child: Lottie.asset(
            "assets/images/empty_list.json",
          ),
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
      ],
    );
  }
}
