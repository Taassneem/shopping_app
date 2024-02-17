import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.textColor, this.onTap,
  });
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final Color? textColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.labelMedium!.copyWith(color: textColor),
      ),
      trailing: trailing,
    );
  }
}
