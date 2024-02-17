import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: BlocProvider.of<GlobalCubit>(context).darkTheme
              ? AppColors.darkGrey
              : AppColors.lightGrey,
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(icon),
        ),
      ),
    );
  }
}
