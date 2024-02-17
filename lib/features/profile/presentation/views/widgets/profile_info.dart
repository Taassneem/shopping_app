import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    this.leading,
    required this.title,
    this.onTap,
    this.onPressed,
  });
  final Widget? leading;
  final String title;
  final void Function()? onTap;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          onTap: onTap,
          leading: leading,
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: GestureDetector(
            onTap: onPressed,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: BlocProvider.of<GlobalCubit>(context).darkTheme
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
