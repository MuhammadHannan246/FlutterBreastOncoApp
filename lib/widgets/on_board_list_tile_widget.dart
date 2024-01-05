import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardListTileWidget extends StatelessWidget {
  final String text;
  final String image;
  final String routeName;

  const OnBoardListTileWidget({
    super.key,
    required this.text,
    required this.image,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: kSecondarySwatchColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(routeName);
        },
        leading: CircleAvatar(
          backgroundColor: kSecondarySwatchColor,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: kSecondarySwatchColor.shade700,
            //   border: Border.all(color: kLightColor),
            // ),
            child: SvgPicture.asset(
              image,
              height: 24,
            ),
          ),
        ),
        title: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: kLightColor,
              ),
        ),
      ),
    );
  }
}
