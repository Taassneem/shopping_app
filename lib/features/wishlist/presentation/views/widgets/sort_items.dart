import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class SortItems extends StatelessWidget {
  const SortItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '365 Items',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      subtitle: Text(
        'Available in stock',
        style: Theme.of(context).textTheme.displaySmall,
      ),
      trailing: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: BlocProvider.of<GlobalCubit>(context).darkTheme
                  ? AppColors.darkGrey
                  : AppColors.lightGrey),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(AppAssets.sort),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Sort',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
