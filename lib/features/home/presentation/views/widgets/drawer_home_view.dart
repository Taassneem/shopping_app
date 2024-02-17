import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/bloc/lang_cubit/global_cubit.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/generated/l10n.dart';

import 'drawer_list_tile.dart';

class DrawerHomeView extends StatelessWidget {
  const DrawerHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = S.of(context);
    return Drawer(child: BlocBuilder<GlobalCubit, GlobalState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            DrawerListTile(
              title: s.darkMode,
              trailing: CupertinoSwitch(
                value: BlocProvider.of<GlobalCubit>(context).darkTheme,
                onChanged: (newValue) {
                  BlocProvider.of<GlobalCubit>(context).changeTheme();
                  BlocProvider.of<GlobalCubit>(context).darkTheme = newValue;
                },
              ),
              leading: const Icon(Icons.wb_sunny_outlined),
            ),
            DrawerListTile(
              title: s.accountInformation,
              leading: const Icon(Icons.error_outline),
            ),
            DrawerListTile(
              title: s.order,
              leading: Image.asset(
                AppAssets.bag,
                color: BlocProvider.of<GlobalCubit>(context).darkTheme
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            DrawerListTile(
              title: s.password,
              leading: const Icon(Icons.lock_outline),
            ),
            DrawerListTile(
              title: s.myCards,
              leading: const Icon(Icons.wallet),
            ),
            DrawerListTile(
              title: s.wishList,
              leading: const Icon(Icons.favorite_border),
            ),
            DrawerListTile(
              title: s.setting,
              leading: const Icon(Icons.settings_outlined),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.2,
            // ),
            DrawerListTile(
              title: s.logout,
              leading: const Icon(
                Icons.logout_outlined,
                color: AppColors.google,
              ),
              textColor: AppColors.google,
            ),
          ],
        );
      },
    ));
  }
}
