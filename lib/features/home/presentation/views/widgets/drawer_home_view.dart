import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';

import 'drawer_list_tile.dart';

class DrawerHomeView extends StatelessWidget {
  const DrawerHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
        ),
        DrawerListTile(
          title: 'Dark Mode',
          trailing: CupertinoSwitch(
            value: false,
            onChanged: (value) {},
          ),
          leading: const Icon(Icons.wb_sunny_outlined),
        ),
        const DrawerListTile(
          title: 'account Information',
          leading: Icon(Icons.error_outline),
        ),
        DrawerListTile(
          title: 'Order',
          leading: Image.asset(
            AppAssets.bag,
          ),
        ),
        const DrawerListTile(
          title: 'Password',
          leading: Icon(Icons.lock_outline),
        ),
        const DrawerListTile(
          title: 'My Card',
          leading: Icon(Icons.wallet),
        ),
        const DrawerListTile(
          title: 'Wishlist',
          leading: Icon(Icons.favorite_border),
        ),
        const DrawerListTile(
          title: 'Setting',
          leading: Icon(Icons.settings_outlined),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        const DrawerListTile(
          title: 'Logout',
          leading: Icon(
            Icons.logout_outlined,
            color: AppColors.google,
          ),
          textColor: AppColors.google,
        ),
      ],
    ));
  }
}
