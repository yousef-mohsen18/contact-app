import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  final TextEditingController controller;
   CustomTextFiled({super.key, required this.hintText,required this.controller, required this.onChanged});
  final String hintText;
   Function(String) onChanged;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        onChanged:widget.onChanged,
        controller: widget.controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.offWhite,
            fontSize: 16,
            fontWeight: .w400
          ),

        ),
        style: TextStyle(
          fontWeight: .w400,
          fontSize: 16,
          color: Color(0xffE2F4F6),
        ),
        cursorColor: AppColors.offWhite,
      ),
    );
  }
}
