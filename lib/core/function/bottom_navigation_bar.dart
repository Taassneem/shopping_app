import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';
import 'package:shopping_app/generated/l10n.dart';

BottomNavigationBar bottomNavigationBar(Function(int)? onTap, int currentIndex,context) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: onTap,
    selectedItemColor: AppColors.primaryColor,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        icon: Visibility(
          visible: currentIndex != 0,
          child: const Icon(Icons.home),
        ),
        label: S.of(context).home,
      ),
      
      BottomNavigationBarItem(
        icon: Visibility(
          visible: currentIndex != 1,
          child: const Icon(
            Icons.account_circle_outlined,
          ),
        ),
        label: S.of(context).profile,
      ),
    ],
  );
}
