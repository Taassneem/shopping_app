import 'package:flutter/material.dart';

class CustomIntroElevatedButton extends StatelessWidget {
  const CustomIntroElevatedButton({
    super.key,
    required this.text,
    this.color,
    required this.leftPadding,
    required this.rightPadding,
    this.textColor,
    this.onPressed,
  });
  final String text;
  final Color? color;
  final Color? textColor;
  final double leftPadding;
  final double rightPadding;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context)
          .elevatedButtonTheme
          .style!
          .copyWith(backgroundColor: MaterialStateProperty.all(color)),
      child: Padding(
        padding: EdgeInsets.only(
            left: leftPadding, right: rightPadding, top: 16, bottom: 16),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
