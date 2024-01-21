import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.labelText,
      this.suffixIcon,
      this.controller});
  final String hint;
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      style: const TextStyle(
        color: AppColors.black,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: AppColors.darkGrey.withOpacity(0.4),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.darkGrey,
        ),
        suffixIcon: suffixIcon,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkGrey.withOpacity(0.4),
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
