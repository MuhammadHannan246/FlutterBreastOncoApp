import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class GoalTimeWidget extends StatelessWidget {
  final String bold;
  final String text;
  const GoalTimeWidget({
    super.key,
    required this.bold,
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
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kSecondarySwatchColor.shade700,
                  ),
              children: [
                TextSpan(
                  text: bold,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kSecondarySwatchColor.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: ' $text',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
