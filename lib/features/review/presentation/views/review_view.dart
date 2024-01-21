import 'package:flutter/material.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/review_view_body.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReviewViewBody(),
    );
  }
}
