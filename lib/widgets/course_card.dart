import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/screens/course_detail_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String image;

  const CourseCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size(context).width * 0.7,
      child: Card(
        elevation: 0,
        color: kPrimarySwatchColor.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      text1,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Text(
                      text2,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: kTextColor,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(CourseDetailScreen.routeName);
                      },
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: Text(
                        text3,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: kLightColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              child: Image.asset(
                image,
                width: size(context).width,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
