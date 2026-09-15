import 'package:contact_app/core/resourses/assets_manager.dart';
import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:contact_app/ui/home/widjets/add_button.dart';
import 'package:contact_app/ui/home/widjets/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // late AnimationController _lottiController;

  // @override
  // void initState() {
  //   super.initState();
  //   _lottiController = AnimationController(vsync: this);
  // }
  List<Map<String, dynamic>>? users = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                (users!.isEmpty)
                    ? Column(
                        children: [
                          SizedBox(height: 161),
                          //   Align(
                          //   alignment: Alignment.center,
                          //   child: Lottie.asset(
                          //     "assets/images/empty_list.json",
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
                          ),
                        ],
                      )
                    :
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: GridView.builder(
                            padding: EdgeInsetsGeometry.only(left: 16,right: 16,top: 27),

                            itemCount: users?.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 295,
                                ),
                            itemBuilder: (context, index) {
                              final user = users![index];

                              return Contact(
                                email: user['email'],
                                phone: user['phone'],
                                userName: user['userName'],
                              );
                            },
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
        (users?.length == 6)
            ? Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 16),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset("assets/icons/delete.svg"),
                  ),
                ),
              )
            : Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 16),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: AddButton(
                      onUserAdded: (result) {
                        setState(() {
                          users?.add(result);
                        });
                      },
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
