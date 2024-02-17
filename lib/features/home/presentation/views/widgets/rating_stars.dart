import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_assets.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        const SizedBox(width: 3),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        const SizedBox(width: 3),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        const SizedBox(width: 3),
        Image.asset(
          AppAssets.star,
          height: 14,
        ),
        const SizedBox(width: 3),
        Image.asset(
          AppAssets.star1,
          height: 14,
          color: BlocProvider.of<GlobalCubit>(context).darkTheme
              ? Colors.white
              : Colors.black,
        ),
      ],
    );
  }
}
