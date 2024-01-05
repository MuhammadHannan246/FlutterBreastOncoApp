import 'package:breast_onco/constants/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StreakWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final MaterialColor color;

  const StreakWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size(context).width * 0.4,
      child: Card(
        color: color.shade100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SvgPicture.asset(
                'assets/images/flame-icon.svg',
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(color, BlendMode.srcATop),
                width: 50,
              ),
              Text(
                text2,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
