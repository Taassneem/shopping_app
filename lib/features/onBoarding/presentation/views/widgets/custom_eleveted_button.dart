import 'package:flutter/material.dart';

class CustomIntroElevatedButton extends StatelessWidget {
  const CustomIntroElevatedButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.onPressed, required this.horizontal,
  });
  final String text;
  final Color? color;
  final Color? textColor;
  final double horizontal;
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
        padding: EdgeInsets.symmetric(
            vertical: 12, horizontal: horizontal),
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
