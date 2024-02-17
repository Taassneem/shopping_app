import 'package:flutter/material.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({
    super.key,
    required this.title,
    this.onPressed,
    required this.image,
    required this.text,
    required this.subTitle,
  });
  final String title;
  final String image;
  final String text;
  final String subTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
              iconSize: 18,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  subTitle,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
