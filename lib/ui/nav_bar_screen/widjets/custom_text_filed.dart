import 'package:contact_app/core/resourses/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;

   CustomTextFiled({super.key, required this.hintText,required this.controller, required this.onChanged, required this.keyboardType, required this.textInputAction, this.validator});
  final String hintText;
   Function(String) onChanged;


  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  final GlobalKey<FormState>_formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextFormField(
         validator: widget.validator,

          autocorrect: true,
          autovalidateMode: AutovalidateMode.onUnfocus,
      keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          onChanged:widget.onChanged,
          controller: widget.controller,
          onTapUpOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.offWhite),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.offWhite),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color:Colors.red),
            ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.red),
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
      ),
    );
  }
}
