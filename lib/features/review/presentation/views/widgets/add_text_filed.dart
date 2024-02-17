import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class AddTextField extends StatelessWidget {
  const AddTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        filled: true,
        fillColor: BlocProvider.of<GlobalCubit>(context).darkTheme
            ? AppColors.darkGrey
            : AppColors.lightGrey,
        hintStyle: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
