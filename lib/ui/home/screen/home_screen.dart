import 'package:contact_app/core/resourses/assets_manager.dart';
import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:contact_app/ui/home/widjets/add_button.dart';
import 'package:contact_app/ui/home/widjets/contact.dart';
import 'package:contact_app/ui/home/widjets/delete_button.dart';
import 'package:contact_app/ui/home/widjets/no_contacts_widget.dart';
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
                    ? NoContactsWidget()
                    : Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: GridView.builder(
                            padding: EdgeInsetsGeometry.only(
                              left: 16,
                              right: 16,
                              top: 27,
                            ),

                            itemCount: users?.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 295,
                                  mainAxisSpacing: 15,
                                ),
                            itemBuilder: (context, index) {

                              final user = users![index];

                              return Contact(
                                DeleteItem: () {
                                  DeleteItem(index);
                                },
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
            : Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.8),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 5),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: DeleteButton(
                        Delete: Delete
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
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
                ],
              ),
      ],
    );
  }

  void Delete() {
    setState(() {
      users!.clear();
    });
  }

  void DeleteItem(int position) {
    setState(() {
      users?.removeAt(position);
    });
  }
}
