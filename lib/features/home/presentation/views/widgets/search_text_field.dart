import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:shopping_app/generated/l10n.dart';

import '../../../../../core/utils/app_color.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.black,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: '${S.of(context).search}...',
        filled: true,
        fillColor: BlocProvider.of<GlobalCubit>(context).darkTheme
            ? AppColors.darkGrey
            : AppColors.lightGrey,
        hintStyle: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(color: AppColors.black),
      ),
    );
  }
}
