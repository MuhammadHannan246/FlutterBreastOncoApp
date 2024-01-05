import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class OnboardPlanWidget extends StatelessWidget {
  final String text;

  const OnboardPlanWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(Icons.check, color: kPrimarySwatchColor),
          const SizedBox(width: 10),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextColor,
                ),
          ),
        ],
      ),
    );
  }
}
