import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class OnBoardReviewCEManagementWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String credit;

  const OnBoardReviewCEManagementWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.credit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    text2,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: kTextColor,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              child: Center(
                child: FittedBox(
                  child: Text(
                    credit,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kSecondarySwatchColor.shade700,
                          fontSize: 18.0,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
