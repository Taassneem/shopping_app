import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomVerificationCode extends StatelessWidget {
  const CustomVerificationCode({
    super.key,
    required this.number,
  });
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(
            color: AppColors.darkGrey,
          ),
          top: BorderSide(
            color: AppColors.darkGrey,
          ),
          left: BorderSide(
            color: AppColors.darkGrey,
          ),
          right: BorderSide(
            color: AppColors.darkGrey,
          ),
        ),
      ),
      child: Center(
        child: Text(
          number,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors.black),
        ),
      ),
    );
  }
}
