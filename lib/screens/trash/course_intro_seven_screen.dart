import 'package:breast_onco/screens/trash/course_intro_four_screen.dart';
import 'package:breast_onco/widgets/bottom_nav_bar_button_widget.dart';
import 'package:breast_onco/widgets/multi_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class CourseIntroSevenScreen extends StatelessWidget {
  const CourseIntroSevenScreen({super.key});
  static const routeName = '/course-intro-seven';

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
                'Learn',
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
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'What are the seven protected classes under the Fair Housing Act?',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecondarySwatchColor.shade700, fontWeight: FontWeight.bold),
            ),

            Text(
              'Press the class to see if it’s protected',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kDarkColor,
                    fontSize: 18.0,
                  ),
            ),
            const SizedBox(height: 20.0),

            const MultiChipWidget(),
            // const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarButtonWidget(text: 'Continue', routeName: CourseIntroFourScreen.routeName),
    );
  }
}
