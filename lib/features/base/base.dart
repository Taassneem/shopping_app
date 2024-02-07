import 'package:flutter/material.dart';
import 'package:shopping_app/core/function/bottom_navigation_bar.dart';
import 'package:shopping_app/features/home/presentation/views/home_view.dart';
import 'package:shopping_app/features/profile/presentation/views/profile_view.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => BaseViewState();
}

class BaseViewState extends State<BaseView> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [HomeView(), ProfileView()],
      ),
      bottomNavigationBar: bottomNavigationBar((index) {
        setState(() {
          currentIndex = index;
          pageController.jumpToPage(index);
        });
      }, currentIndex, context),
    );
  }
}
