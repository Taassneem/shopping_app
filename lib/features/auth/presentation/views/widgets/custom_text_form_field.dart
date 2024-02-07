import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.controller,
    this.onChanged,
  });
  final String hint;
  final TextEditingController? controller;
  final Function(String)? onChanged;

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
      onChanged: onChanged,
      style: const TextStyle(
        color: AppColors.black,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: AppColors.darkGrey.withOpacity(0.4),
        ),
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
