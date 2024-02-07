import 'package:flutter/material.dart';
import 'widgets/screen_two_view_body.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ScreenTwoViewBody()),
    );
  }
}
