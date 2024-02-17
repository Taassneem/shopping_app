import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:intl/intl.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: isArabic() ? 0 : 16, right: isArabic() ? 16 : 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: BlocProvider.of<GlobalCubit>(context).darkTheme
              ? AppColors.darkGrey
              : AppColors.lightGrey,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
