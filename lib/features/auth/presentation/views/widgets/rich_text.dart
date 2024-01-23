import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class Richtext extends StatelessWidget {
  const Richtext({
    super.key,
    required this.text,
    required this.textButton,
    this.textAlign = TextAlign.start,
    this.onTap,
  });
  final String text;
  final String textButton;
  final TextAlign textAlign;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: Theme.of(context).textTheme.displaySmall,
        children: [
          TextSpan(
            text: text,
          ),
          TextSpan(
            text: textButton,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.black),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
