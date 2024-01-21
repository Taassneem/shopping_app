import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/views/widgets/review_info.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: ReviewInfo(),
        );
      },
    );
  }
}
