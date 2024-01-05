import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorWidget extends StatelessWidget {
  final double radius;
  final double lineWidth;
  final bool animation;
  final double percent;
  final int animationDuration;
  final String text1;
  final String text2;
  final String text3;
  final Color color;

  const CircularPercentIndicatorWidget({
    super.key,
    required this.radius,
    required this.lineWidth,
    required this.animation,
    required this.percent,
    required this.animationDuration,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      backgroundColor: kSecondarySwatchColor.shade50,
      radius: radius,
      lineWidth: lineWidth,
      animation: animation,
      percent: percent,
      animationDuration: animationDuration,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Text(
            text2,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            text3,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: kTextColor),
          ),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: color,
    );
  }
}
