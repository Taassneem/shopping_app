import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({
    super.key,
    required this.size,
    this.onTap,
  });
  final String size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: BlocProvider.of<GlobalCubit>(context).darkTheme
              ? AppColors.darkGrey
              : AppColors.lightGrey,
        ),
        child: Center(
          child: Text(
            size,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.black),
          ),
        ),
      ),
    );
  }
}
