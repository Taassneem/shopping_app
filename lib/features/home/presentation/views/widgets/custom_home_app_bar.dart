import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    required this.secondIcon,
    required this.firstIcon,
    this.onPressed,
    this.secondOnPressed,
    required this.scaffoldKey,
  });
  final String secondIcon;
  final String firstIcon;
  final void Function()? onPressed;
  final void Function()? secondOnPressed;
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.lightGrey,
            ),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: Image.asset(firstIcon),
            ),
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.lightGrey,
            ),
            child: IconButton(
              onPressed: secondOnPressed,
              icon: Image.asset(secondIcon),
            ),
          ),
        ],
      ),
    );
  }
}
