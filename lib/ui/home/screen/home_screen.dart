import 'package:contact_app/core/resourses/assets_manager.dart';
import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:contact_app/ui/home/widjets/add_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  // late AnimationController _lottiController;

  // @override
  // void initState() {
  //   super.initState();
  //   _lottiController = AnimationController(vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
           Column(
             children: [
             //   Align(
             //   alignment: Alignment.center,
             //   child: Lottie.asset(
             //     "assets/images/list purple (1).json",
             //   ),
             // ),
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
               ),],
           ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AddButton(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
