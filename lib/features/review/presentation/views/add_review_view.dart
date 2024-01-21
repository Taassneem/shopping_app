import 'package:flutter/material.dart';
import 'package:shopping_app/features/review/presentation/views/widgets/add_review_body.dart';

class AddReviewView extends StatelessWidget {
  const AddReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddReviewViewBody(),
    );
  }
}
