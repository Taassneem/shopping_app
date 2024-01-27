import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomTextFormFieldPass extends StatefulWidget {
  const CustomTextFormFieldPass({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.controller,
    this.onChanged,
  });
  final String hint;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  State<CustomTextFormFieldPass> createState() => _CustomTextFormFieldPassState();
}

class _CustomTextFormFieldPassState extends State<CustomTextFormFieldPass> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: widget.onChanged,
      style: const TextStyle(
        color: AppColors.black,
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: AppColors.darkGrey.withOpacity(0.4),
        ),
        suffixIcon: IconButton(
            onPressed: () {
              obscureText = false;
              setState(() {});
            },
            icon: obscureText == false
                ? const Icon(Icons.remove_red_eye_outlined)
                : const Icon(Icons.visibility_off_outlined)),
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
