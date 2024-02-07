import 'package:flutter/material.dart';
import 'package:shopping_app/core/function/bottom_navigation_bar.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:shopping_app/features/profile/presentation/views/profile_view.dart';
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
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: buildPages()[currentIndex],
      drawer: const DrawerHomeView(),
      bottomNavigationBar: bottomNavigationBar((index) {
        setState(() {
          currentIndex = index;
        });
      }, currentIndex,context),
    );
  }
}
