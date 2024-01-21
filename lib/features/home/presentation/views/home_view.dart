import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/features/cart/presentation/views/cart_view.dart';
import 'package:shopping_app/features/cart/presentation/views/payment_view.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:shopping_app/features/wishlist/presentation/views/wishlist_view.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List buildPages() {
    return [
      HomeViewBody(
        scaffoldKey: _scaffoldKey,
      ),
      const WishlistView(),
      const CartView(),
      const PaymentView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: buildPages()[currentIndex],
      drawer: Drawer(
          child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
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
            leading: Image.asset(AppAssets.bag),
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
      )),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      selectedItemColor: AppColors.primaryColor,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Visibility(
            visible: currentIndex != 0,
            child: const Icon(Icons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Visibility(
            visible: currentIndex != 1,
            child: const Icon(Icons.favorite_border),
          ),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Visibility(
            visible: currentIndex != 2,
            child: Image.asset(AppAssets.bag),
          ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Visibility(
            visible: currentIndex != 3,
            child: const Icon(Icons.wallet),
          ),
          label: 'My cards',
        )
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.textColor,
  });
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.labelMedium!.copyWith(color: textColor),
      ),
      trailing: trailing,
    );
  }
}
