import 'package:breast_onco/screens/trash/course_intro_two_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroOneScreen extends StatelessWidget {
  const CourseIntroOneScreen({super.key});
  static const routeName = '/course-intro-one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'Back',
          icon: Icon(Icons.chevron_left, color: kSecondarySwatchColor, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: ElevatedButton(
              onPressed: () {},
              style: Theme.of(context).elevatedButtonTheme.style,
              child: Text(
                'Intro',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kLightColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kSecondarySwatchColor[100],
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/intro.png'),
            ),
            const SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineSmall,
                children: [
                  TextSpan(
                    text: 'My name is Sue and I am going to be your ',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextSpan(
                    text: 'Dash',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'U',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold, color: kPrimarySwatchColor),
                  ),
                  const TextSpan(
                    text: ' guide for this course on Fair Housing. ',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Since this is a continuing education course, we’ll focus on reviewing important topics through questions, quick tips, memorization activities and interactive videos.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroTwoScreen.routeName),
    );
  }
}
