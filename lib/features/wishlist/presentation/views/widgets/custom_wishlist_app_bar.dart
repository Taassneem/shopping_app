import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/core/utils/app_router.dart';

class CustomWishlistAppBar extends StatelessWidget {
  const CustomWishlistAppBar({
    super.key,
    required this.secondOnPressed,
    required this.secondIcon,
  });

  final void Function()? secondOnPressed;
  final String secondIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? AppColors.darkGrey
                : AppColors.lightGrey,
          ),
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.homeView);
            },
            icon: const Icon(Icons.arrow_back_sharp),
          ),
        ),
        Text(
          'Wishlist',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: BlocProvider.of<GlobalCubit>(context).darkTheme
                ? AppColors.darkGrey
                : AppColors.lightGrey,
          ),
          child: IconButton(
            onPressed: secondOnPressed,
            icon: Image.asset(secondIcon),
          ),
        ),
      ],
    );
  }
}
