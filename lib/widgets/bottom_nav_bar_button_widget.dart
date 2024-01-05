import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBarButtonWidget extends StatelessWidget {
  final String text;
  final String routeName;

  const BottomNavBarButtonWidget({
    super.key,
    required this.text,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size(context).width,
      color: kLightColor,
      margin: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: kLightColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
