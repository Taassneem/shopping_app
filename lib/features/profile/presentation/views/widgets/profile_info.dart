import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    this.leading,
    required this.title,
    this.onTap,
  });
  final Widget? leading;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        GestureDetector(
          onTap: onTap,
          child: ListTile(
            leading: leading,
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: AppColors.black,
            ),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
