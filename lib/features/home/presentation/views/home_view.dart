import 'package:flutter/material.dart';
import 'package:shopping_app/features/cart/presentation/views/cart_view.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:shopping_app/features/profile/presentation/views/profile_view.dart';
import 'package:shopping_app/core/utils/app_assets.dart';
import 'package:shopping_app/core/utils/app_color.dart';

import 'widgets/drawer_home_view.dart';

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
      const CartView(),
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: buildPages()[currentIndex],
      drawer: const DrawerHomeView(),
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
            child: Image.asset(AppAssets.bag),
          ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Visibility(
            visible: currentIndex != 2,
            child: const Icon(
              Icons.account_circle_outlined,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
