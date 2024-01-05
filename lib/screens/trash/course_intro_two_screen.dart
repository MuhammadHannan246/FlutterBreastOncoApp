import 'package:breast_onco/screens/trash/course_intro_three_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroTwoScreen extends StatelessWidget {
  const CourseIntroTwoScreen({super.key});
  static const routeName = '/course-intro-two';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'What is Fair Housing?',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecondarySwatchColor.shade700, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Text(
              'The Fair Housing Act protects people from when they are renting or buying a home, getting a mortgage, seeking housing assistance, or engaging in other housing-related activities.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 40.0),
            Text(
              'Additional protections apply to federally housing.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroThreeScreen.routeName),
    );
  }
}
