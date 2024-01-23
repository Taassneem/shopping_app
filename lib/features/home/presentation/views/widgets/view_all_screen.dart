import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_string.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({
    super.key,
    required this.viewName, this.onPressed,
  });
  final String viewName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          viewName,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppString.viewAll,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}
