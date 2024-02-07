import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.color,
    required this.text,
    required this.image,
  });
  final Color? color;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 30,
              color: AppColors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.white,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
